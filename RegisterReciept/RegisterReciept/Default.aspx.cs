using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegisterReciept
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                double userInput = Double.Parse(input.Text);

                Model.Receipt receiptCalc = new Model.Receipt(userInput);

                //Sätter texten på alla labels
                total.Text = String.Format("{0:c}", receiptCalc.Subtotal);
                discountRate.Text = String.Format("{0:p0}", receiptCalc.DiscountRate);
                discount.Text = String.Format("{0:c}", receiptCalc.MoneyOff);
                toPay.Text = String.Format("{0:c}", receiptCalc.Total);

                //Visar kvittot
                receipt.Visible = true;
            }
        }
    }
}