using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsPrimjeri
{
    public partial class _2_PostBack : System.Web.UI.Page
    {

        //Page_Load će se izvršiti kod svakog učitavanja stranice
        //Page objekt ima svojstvo IsPostBack koje nam govori da li se radi o prvom učitavanju ili ne
        protected void Page_Load(object sender, EventArgs e)
        {
            //ukoliko je prvo učitavanje (znači nije PostBack)
            if(!IsPostBack) 
            {
                tbTekst.Text = "Unesi svoje ime";
            }
        }

        protected void btnKlikniMe_Click(object sender, EventArgs e)
        {
            lblRezultat.Text = "Hello " + tbTekst.Text;
        }
    }
}