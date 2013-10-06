using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Entities;
using Tax;
using System.Web.UI.HtmlControls;
namespace ECommerceProject
{
    public partial class ShoppingCart :BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

               // GridView1.DataSource = 
            if (Session["customerid"] != null)
            {
                m();
            }
                //GridView1.DataBind();


                 
           
        }

      /*  public DataTable m()
        {
            eSTOREDataSetTableAdapters.basketTableAdapter da = new eSTOREDataSetTableAdapters.basketTableAdapter();
            DataTable dt= da.GetShoppingBasketByCustomerIdandShoppingCartId(
                       int.Parse(Session["customerid"].ToString())
                     ,
                int.Parse(Session["ShoppingCartId"].ToString())
                     );
               
            return dt;
        }*/
        public void m()
  {
      eSTOREDataSetTableAdapters.basketTableAdapter da = new eSTOREDataSetTableAdapters.basketTableAdapter();
      DataTable dt= da.GetShoppingBasketByCustomerIdandShoppingCartId(
                 int.Parse(Session["customerid"].ToString())
               ,
          int.Parse(Session["ShoppingCartId"].ToString())
               );

        //
      List<TaxUC> ucList = new List<TaxUC>();
      List<ItemTax> pl = new List<ItemTax>();

      pl = (from DataRow row in dt.Rows

            select new ItemTax
            {
                Product = new Product
                {
                    Id = int.Parse(row["PRODUCT_ID"].ToString()),
                    Name = row["NAME"].ToString(),
                    
                    Image = row["IMAGE"].ToString(),
                    Price = float.Parse(row["PRICE"].ToString()),
                    Type = int.Parse(row["TYPE"].ToString())
                },
                Tax=0.7,
                AfterTax=10,
                Quantity=1
            
                //basket.PRODUCT_ID, product_1.NAME, product_1.PRICE, basket.QUANTITY, product_1.TYPE, product_1.[IMAGE]

            }).ToList();

      int r = pl.Count;
      for (int i = 0; i < pl.Count; i++)
      {
          TaxUC item = (TaxUC)Page.LoadControl("TaxUC.ascx");
          item.tax_id.Text = pl.ElementAt(i).Product.Id.ToString();
          item.tax_type.Text = pl.ElementAt(i).Product.Type.ToString();
          item.tax_name.Text = pl.ElementAt(i).Product.Name.ToString();
          item.tax_price.Text = pl.ElementAt(i).Product.Price.ToString();
          item.tax_img.ImageUrl = pl.ElementAt(i).Product.Image.ToString();
          item.imageLink.HRef = pl.ElementAt(i).Product.Image.ToString();
          item.tax_tax.Text = pl.ElementAt(i).Tax.ToString();
          item.tax_quan.Text = pl.ElementAt(i).Quantity.ToString();
          item.tax_aftertax.Text = pl.ElementAt(i).AfterTax.ToString();
          item.tax_total.Text = (pl.ElementAt(i).AfterTax * pl.ElementAt(i).Quantity).ToString();
          item.itemTax = pl.ElementAt(i);
          item.del1 = deletefromTax;
          item.del2 = deletefromTax;
          ucList.Add(item);
      }

      int j = 0;

      HtmlTableRow tr;
      HtmlTableCell td;
      int intRowCounter;
      int intCellCounter;
      tr = new HtmlTableRow();
      for (intRowCounter = 1; intRowCounter <= r; intRowCounter++)
      {
          tr = new HtmlTableRow();
          for (intCellCounter = 1; intCellCounter <= 1; intCellCounter++)
          {

              td = new HtmlTableCell();
              td.Align = "center";
              if (j == pl.Count) break;
              td.Controls.Add(ucList[j]);//"TestTable";div1.Controls.Add(uc);
              j++;
              tr.Cells.Add(td);
          }
          tblGridTable.Rows.Add(tr);

      }


      double t = 0;
            double.TryParse((da.GetTotalSum(int.Parse(Session["customerid"].ToString()), int.Parse(Session["ShoppingCartId"].ToString()))).ToString(),out t);
      TaxCalculator txc = new TaxCalculator();

      double ft = txc.calculateTax(t, 0.09);
      Total.Text = ft + " $$";

            //
               
     
  }
        public void addtoTax(ItemTax p)
        {
            eSTOREDataSetTableAdapters.basketTableAdapter da = new eSTOREDataSetTableAdapters.basketTableAdapter();

           // da.InsertItemToBasket(int.Parse(Session["customerid"].ToString()), int.Parse(Session["ShoppingCartId"].ToString()), 1);
            //   (CUSTOMER_ID, PRODUCT_ID, [VALUE], QUANTITY, SHOPPINGCART_ID)



        }
        public void deletefromTax(ItemTax p)
        {
            eSTOREDataSetTableAdapters.basketTableAdapter da = new eSTOREDataSetTableAdapters.basketTableAdapter();
          

            da.DeleteFromBasket(p.Product.Id, int.Parse(Session["customerid"].ToString()), int.Parse(Session["ShoppingCartId"].ToString()));
            Page.Response.Redirect(Page.Request.Url.ToString(), true);




        }
        protected void loader()
        {

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lblPay.Text = "This is a future feature :D";
        }
    }
}