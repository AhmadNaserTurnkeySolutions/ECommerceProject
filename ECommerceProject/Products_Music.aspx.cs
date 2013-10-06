using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Text;
using System.IO;
using Entities;
using Tax;
namespace ECommerceProject
{
    public partial class Products_Music : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            loader();
            m();

        }
        public void addtocart(Product p)
        {
            eSTOREDataSetTableAdapters.basketTableAdapter da = new eSTOREDataSetTableAdapters.basketTableAdapter();

            da.InsertItemToBasket(int.Parse(Session["customerid"].ToString()), p.Id, int.Parse(Session["ShoppingCartId"].ToString()), 1);
            //   (CUSTOMER_ID, PRODUCT_ID, [VALUE], QUANTITY, SHOPPINGCART_ID)
            Page.Response.Redirect(Page.Request.Url.ToString() + "?h=" + new Random().Next(1, 1000), true);


        }

        public void deletefromcart(Product p)
        {
            eSTOREDataSetTableAdapters.basketTableAdapter da = new eSTOREDataSetTableAdapters.basketTableAdapter();

            //  da.InsertQuery2(x, y, z);

            Page.Response.Redirect(Page.Request.Url.ToString() + "?h=" + new Random().Next(1, 1000), true);

        }

        protected void loader()
        {
            List<itemUC> ucList = new List<itemUC>();
            eSTOREDataSetTableAdapters.productTableAdapter da = new eSTOREDataSetTableAdapters.productTableAdapter();
            DataTable dt = da.GetProductsByType(3);
            List<Product> pl = new List<Product>();

            pl = (from DataRow row in dt.Rows

                  select new Product
                  {
                      Id = int.Parse(row["ID"].ToString()),
                      Name = row["NAME"].ToString(),
                      Description = row["DESCRIPTION"].ToString(),
                      Image = row["IMAGE"].ToString(),
                      Price = float.Parse(row["PRICE"].ToString()),
                      Type = 3
                  }).ToList();

            int r = (int)(Math.Ceiling((decimal)pl.Count / 4));
            for (int i = 0; i < pl.Count; i++)
            {
                itemUC item = (itemUC)Page.LoadControl("itemUC.ascx");
                item.item_id.Text = pl.ElementAt(i).Id.ToString();
                item.item_description.Text = pl.ElementAt(i).Description.ToString();
                item.item_name.Text = pl.ElementAt(i).Name.ToString();
                item.item_price.Text = pl.ElementAt(i).Price.ToString();
                item.item_pic.ImageUrl = pl.ElementAt(i).Image.ToString();
                item.imageLink.HRef = pl.ElementAt(i).Image.ToString();
                item.product = pl[i];
                item.del1 = addtocart;
                item.del2 = deletefromcart;
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
                for (intCellCounter = 1; intCellCounter <= 4; intCellCounter++)
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
        }
        public void m()
        {
            if (Session["ShoppingCartId"] != null)
            {
                eSTOREDataSetTableAdapters.basketTableAdapter da = new eSTOREDataSetTableAdapters.basketTableAdapter();
                DataTable dt = da.GetShoppingBasketByCustomerIdandShoppingCartId(
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
                          Tax = 0.7,
                          AfterTax = 10,
                          Quantity = 1

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
                    //tblGridTable2
                    Table1.Rows.Add(tr);
                }

                //

            }
        }
        public void addtoTax(ItemTax p)
        {
            eSTOREDataSetTableAdapters.basketTableAdapter da = new eSTOREDataSetTableAdapters.basketTableAdapter();

            // da.InsertItemToBasket(int.Parse(Session["customerid"].ToString()), int.Parse(Session["ShoppingCartId"].ToString()), 1);
            //   (CUSTOMER_ID, PRODUCT_ID, [VALUE], QUANTITY, SHOPPINGCART_ID)


            Page.Response.Redirect(Page.Request.Url.ToString() + "?h=" + new Random().Next(1, 1000), true);
        }
        public void deletefromTax(ItemTax p)
        {
            eSTOREDataSetTableAdapters.basketTableAdapter da = new eSTOREDataSetTableAdapters.basketTableAdapter();

            da.DeleteFromBasket(p.Product.Id, int.Parse(Session["customerid"].ToString()), int.Parse(Session["ShoppingCartId"].ToString()));
            Page.Response.Redirect(Page.Request.Url.ToString() + "?h=" + new Random().Next(1, 1000), true);




        }
    }
}