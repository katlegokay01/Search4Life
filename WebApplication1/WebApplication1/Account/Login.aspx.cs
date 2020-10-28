using System;
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
    public partial class Login : Page
    {
        string connectionString = @"Data Source=DESKTOP-IHJ12RC\MSSQLSERVER1;Initial Catalog=addiction;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void LogIn(object sender, EventArgs e)
        {
            using (SqlConnection sqlcon = new SqlConnection(connectionString))
            {
                
                sqlcon.Open();
                string query = "SELECT COUNT(1) FROM demoREGISTER WHERE EMAIL=@EMAIL AND PASSWORD= @PASSWORD";
                SqlCommand sqlCmd = new SqlCommand(query, sqlcon);

                sqlCmd.Parameters.AddWithValue("@EMAIL", Email.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@PASSWORD", Password.Text.Trim());
                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
                if (count == 1)
                {
                    Session["EMAIL"] = Email.Text.Trim();
                    //change page after login
                    Response.Redirect("/Welcome.aspx");

                }
                else
                {
                   // FailureText.Text = "Invalid login attempt";
                    //ErrorMessage.Visible = true;
                }
            }
            }
    }
}