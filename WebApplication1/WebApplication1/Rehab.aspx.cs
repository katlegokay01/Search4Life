using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1
{
    public partial class Rehab : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
           
            string mainconn = @"Data Source=DESKTOP-IHJ15RC\MSSQL1;Initial Catalog=addiction;Integrated Security=True";
            SqlConnection sqlconn = new SqlConnection(mainconn);
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand();
            string sqlquery = "select * from RehabCenter where RehabPROVINCE like '%' +@RehabPROVINCE+ '%'";
            sqlcomm.CommandText = sqlquery;
            sqlcomm.Connection = sqlconn;
            sqlcomm.Parameters.AddWithValue("RehabPROVINCE", txtSearch.Text);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(sqlcomm);
            sda.Fill(dt);
            Gridview1.DataSource = dt;
            Gridview1.DataBind();
        }
    }
}