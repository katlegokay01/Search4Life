using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Profile : System.Web.UI.Page
    {
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

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}