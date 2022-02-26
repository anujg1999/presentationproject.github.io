using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewProjectDemo
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

          
}

protected void btnview_ServerClick(object sender, EventArgs e)
        {
            var name = txtname.Value;
            var email = txtemail.Value;
            var contact = txtcontact.Value;
            var password = txtpass.Value;

            dynamicdata(name, email, contact, password);
            

            //ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Oops!', 'Something went wrong on the page!', 'error');", true);
        }

        public void dynamicdata(string name,string email,string contact,string password)
        {
            DataTable dt = new DataTable();
            try
            {
                if (ViewState["temtable"] != null)
                {
                    dt = (DataTable)ViewState["temtable"];
                    dt.Rows.Add(name, email, contact, password);
                    ViewState["temptable"] = dt;
                    
                    

                }
                else
                {
                    dt.Columns.AddRange(new DataColumn[4] { new DataColumn("name", typeof(string)), new DataColumn("email", typeof(string)), new DataColumn("contact", typeof(string)), new DataColumn("password", typeof(string)) });
                    dt.Rows.Add(name, email, contact, password);
                    ViewState["temtable"] = dt;

                }
                repeat_data.DataSource = dt;
                repeat_data.DataBind();

            }catch(Exception ex)
            {

            }
        }

        protected void btnsave_ServerClick(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(GetType(), "hwa", "Document.getElementById('btnmodal').click();", true);
        }
    }
}