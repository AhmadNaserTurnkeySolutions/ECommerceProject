using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entities;
using Tax;
namespace ECommerceProject
{
    public partial class TaxUC : System.Web.UI.UserControl
    {
        public ItemTax itemTax;
        
        public delegate void addtoTaxDeligate(ItemTax itemTax);
        public delegate void deletefromTaxDeligate(ItemTax itemTax);
        public addtoTaxDeligate del1 = null;
        public deletefromTaxDeligate del2 = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (del2 != null)
            {
                

                del2.Invoke(itemTax);
               
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (del1 != null)
            {


                del1.Invoke(itemTax);
               
            }
        }
    }
}