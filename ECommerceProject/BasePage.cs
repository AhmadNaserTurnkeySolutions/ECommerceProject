using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ECommerceProject
{
    public class BasePage : System.Web.UI.Page
    {
        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
            if (Session["customerid"] == null)
            {
                Response.Redirect("Account/Login.aspx");
            }
        }
    }
}