using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Entities;
namespace Tax
{
    public class ItemTax
    {
        public Product Product;
        public double MyTax { set; get; }
        private int quantity;
        public int Quantity
        {
            set
            {
                if (quantity >= 1)
                    quantity = value;
                else quantity = 1;
            }
            get { return quantity; }
        }
       
 private double tax;
 public double Tax { set { tax = Product.Price * 0.09; } get { return tax; } }
       
        private double aftertax;
        public double AfterTax
        {
            set { aftertax = Product.Price + Tax; }
            get { return aftertax; }
        }
        
    }
}
