using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Tax
{
    public class TaxCalculator
    {
        public double calculateTax(double price, double tax) 
        {
            double t = price+(price * tax);
            return t;
        }
    }
}
