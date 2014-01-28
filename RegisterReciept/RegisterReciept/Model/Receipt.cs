using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RegisterReciept.Model
{
    public class Receipt
    {

        private double _subtotal;

        public double Subtotal
        {
            get { return _subtotal; }
            private set {

                if (value > 0)
                {
                    _subtotal = value;

                }
                else
                {
                    throw new ArgumentOutOfRangeException();
                }            
            }                
        }

        public double DiscountRate{ get; private set;}

        public double MoneyOff { get; private set; }

        public double Total { get; private set; }

        public void Calculate(double subtotal)
        {
            Subtotal = subtotal;

            if (Subtotal > 0 && Subtotal < 500)
            {
                DiscountRate = 0;
            }
            else if (Subtotal > 499 && Subtotal < 1000)
            {
                DiscountRate = 0.05;
            }
            else if (Subtotal > 999 && Subtotal < 5000)
            {
                DiscountRate = 0.1;
            }
            else
            {
                DiscountRate = 0.15;
            }

            Total = Subtotal * (1 - DiscountRate);

            MoneyOff = Subtotal - Total;
        
        }


        public Receipt(double subtotal)
        {
            Calculate(subtotal);
        }
    }
}