using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entities
{
    public class ShoppingCart
    {
        public int Id { set; get; }
        public Customer Customer { set; get; }
        public DateTime Date{set;get;}
    }
}
