using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entities;
namespace ECommerceProject.Account 
{
    public partial class Register : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            eSTOREDataSetTableAdapters.customersTableAdapter da = new eSTOREDataSetTableAdapters.customersTableAdapter();
            if(da.GetCustomerByName(txtUserName.Text).Count==0)
            {
                Label6.Text = "";
                Customer c = new Customer();
                c.Name = txtName.Text;
                c.Password = txtPassword.Text;
                c.Phone = txtPhone.Text;
                c.UserName = txtUserName.Text;
                c.Country = txtCountry.Text;
                c.Email = txtEmail.Text;

                da.InsertCustomer(c.UserName, c.Password, c.Email, c.Phone, c.Name, c.Country);
                Response.Redirect("../Default.aspx");
            }
            else
            {
                Label6.Text = "This User Is Already Exists";
            }
        }


    }
}
