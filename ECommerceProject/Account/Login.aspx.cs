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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            eSTOREDataSetTableAdapters.customersTableAdapter da = new eSTOREDataSetTableAdapters.customersTableAdapter();
            eSTOREDataSetTableAdapters.shoppingcartTableAdapter da2 = new eSTOREDataSetTableAdapters.shoppingcartTableAdapter();
            if (da.GetCustomerByUserNameAndPassword(txtUserName.Text,txtPassword.Text).Count==1)
            {
                int id = (int)da.GetCustomerID(txtUserName.Text, txtPassword.Text);
                string name = (string)da.GetCustomerName(id);

                Session["customerid"] = id.ToString();
                Session["customername"] = name;
                da2.InsertShoppingCart(id, DateTime.Now);
                Session["ShoppingCartId"] = da2.GetLastCartID();
                Response.Redirect("../Default.aspx");
            }
            else
            {
                Label4.Text = " * Incorrect UserName or Password";
            }
        }
    }
}