using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsPrimjeri
{
    public partial class _9_GridViewKontrola : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void gvZaposlenici_SelectedIndexChanged(object sender, EventArgs e)
        {
            dvPodaciOZaposleniku.PageIndex = gvZaposlenici.SelectedIndex; //postavi da details view pokazuje podatke retka na koji smo kliknuli
        }
    }
}