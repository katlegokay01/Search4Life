using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using WebApplication1.Models;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1.Account
{
    
    public partial class Register : Page
    {
        string connectionString = @"Data Source=DESKTOP-IHJ15RC\MSSQL1;Initial Catalog=addiction;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Clear();
                if (!String.IsNullOrEmpty(Request.QueryString["id"]))
                {
                    int userID = Convert.ToInt32(Request.QueryString["id"]);
                    using (SqlConnection sqlCon = new SqlConnection(connectionString))
                    {
                        //change to demoVIEWUSER proc
                        sqlCon.Open();
                        SqlDataAdapter sqlDa = new SqlDataAdapter("VIEWUSER", sqlCon);
                        sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
                        sqlDa.SelectCommand.Parameters.AddWithValue("@UserID", userID);
                        DataTable dtbl = new DataTable();
                        sqlDa.Fill(dtbl);

                        hfUserID.Value = userID.ToString();
                        Email.Text = dtbl.Rows[0][1].ToString();
                        Password.Text = dtbl.Rows[0][2].ToString();
                        ConfirmPassword.Attributes.Add("value", dtbl.Rows[0][7].ToString());

                    }
                }
            }
        }
        protected void CreateUser_Click(object sender, EventArgs e)
        {

            if (Email.Text == "" || Password.Text == "")
                lblMessage.Text = "Please Fill Mandatory Fields";

            else if (Password.Text != ConfirmPassword.Text)
                lblMessage.Text = "Password do not match";
            else
            {
                try
                {
                    using (SqlConnection sqlCon = new SqlConnection(connectionString))
                    {
                        sqlCon.Open();
                        SqlCommand sqlCmd = new SqlCommand("demoREG", sqlCon);
                        sqlCmd.CommandType = CommandType.StoredProcedure;
                        sqlCmd.Parameters.AddWithValue("@UserID", Convert.ToInt32(hfUserID.Value == "" ? "0" : hfUserID.Value));
                        sqlCmd.Parameters.AddWithValue("@EMAIL", Email.Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Password", Password.Text.Trim());
                        sqlCmd.ExecuteNonQuery();
                        Clear();
                        lblMessage0.Text = "Submitted Successfully";
                        Response.Redirect("/Account/Login");
                    }
                }
                catch (Exception)
                {
                    lblMessage.Text = "email already exists try logging in!!! ";
                }



            }
        }
        public void Clear()
        {
            Email.Text = Password.Text = ConfirmPassword.Text = "";
            hfUserID.Value = "";
            lblMessage0.Text = lblMessage.Text = "";

        }
    }
}