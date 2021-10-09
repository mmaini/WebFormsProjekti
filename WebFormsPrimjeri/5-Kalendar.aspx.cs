using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsPrimjeri
{
    public partial class _5_Kalendar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDatum_Click(object sender, EventArgs e)
        {
            //postavljamo da kalendar bude vidljiv nakon klika buttona
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            //dohvaćamo datum iz Calendar kontrole
            tbDatum.Text = Calendar1.SelectedDate.ToShortDateString(); //ToShortDateString - samo datum, bez vremena
            Calendar1.Visible = false;
        }
    }
}