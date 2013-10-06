using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entities
{
   public class Product
    {
       public int Id { set; get; }
           public int Type { set; get; }
       public string Name { set; get; }
       public string Description { set; get; }
       public float Price { set; get; }
       public string Image { set; get; }
    }
}
