using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entities;
using System.Web.UI.HtmlControls;
namespace ECommerceProject
{
    public partial class itemUC : System.Web.UI.UserControl
    {
        public Product product;
   
        public delegate void addtoCartDeligate(Product product);
        public delegate void deletefromCartDeligate(Product product);
        public addtoCartDeligate del1 = null;
        public deletefromCartDeligate del2 = null;
        public void Page_Load(object sender, EventArgs e)
        {
           
        }

        public void Button1_Click(object sender, EventArgs e)
        {
        

            

            if (del1 != null) 
            {


               del1.Invoke(product);
               this.item_add.Enabled = false;
               this.item_cancel.Enabled = true;
            }
        }

        protected void item_cancel_Click(object sender, EventArgs e)
        {

            if (del2 != null)
            {
                del2.Invoke(product);
                this.item_add.Enabled = true;
                this.item_cancel.Enabled = false;
            }
        }
    }
}