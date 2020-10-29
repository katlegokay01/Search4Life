using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1
{
    public partial class Profile : System.Web.UI.Page
    {
        string connectionString = @"Data Source=DESKTOP-IHJ15RC\MSSQL1;Initial Catalog=addiction;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Chkvictim_clicked(object sender, EventArgs e)
        {
            if (Chkvictim.Checked)
            {
                Chkaddict.Checked = false;
                txtnmbrofdays.Enabled = false;
                txtdrugsADay.Enabled = false;
                txttypeofdrug.Enabled = false;
            }
            else
            {
                Chkaddict.Checked = false;
                txtnmbrofdays.Enabled = true;
                txtdrugsADay.Enabled = true;
                txttypeofdrug.Enabled = true;
            }
        }

        protected void Chkaddict_clicked(object sender, EventArgs e)
        {

        }

        protected void CreateProfile_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    SqlCommand sqlCmd = new SqlCommand("Prof", sqlCon);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("@UserID", Convert.ToInt32(hfUserID.Value == "" ? "0" : hfUserID.Value));
                    sqlCmd.Parameters.AddWithValue("@FNAME", FirstName.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("LNAME", txtSurname.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@DATE_OF_BIRTH", txtDob.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@AGE", txtAge.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@GENDER", DDGender.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@ETHNICITY", DDenthicity.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@ADDRESS", txtaddress.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@PROVINCE", DDprovince.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@CONTACT_NUMBER", txtcontact.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@EMERGENCY", txtemergencyno.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@NUMBER_OF_DAYS", txtnmbrofdays.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@TYPE_OF_DRUGS", txttypeofdrug.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@RELATION_TO_THE_ADDICT", txtrelation.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@BEHAVES_DESC", Txtbehavior.Text.Trim());
                    sqlCmd.ExecuteNonQuery();
                    //Clear();
                    lblMessage0.Text = "Profile Created";
                    Response.Redirect("/Welcome");
                }
            }
            catch (Exception)
            {
                lblMessage.Text = "An Error Occured try again!!! ";
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}