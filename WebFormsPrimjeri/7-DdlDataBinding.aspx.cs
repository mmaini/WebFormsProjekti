using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsPrimjeri
{
    public partial class _7_DdlDataBinding : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //ukoliko nije odabrana ručno dodana opcija (Odaberi zaposlenika)
            if (DropDownList1.SelectedIndex != 0)
            {
                //dohvati vrijednost i prikaži ju u labeli
                lblPlaca.Text = DropDownList1.SelectedValue;
            }
            else
            {
                lblPlaca.Text = "Morate odabrati nekog zaposlenika";
            }
        }
    }
}