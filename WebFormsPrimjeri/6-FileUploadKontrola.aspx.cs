using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsPrimjeri
{
    public partial class _6_FileUploadKontrola : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //spremamo file na drugu lokaciju
        protected void btnFile_Click(object sender, EventArgs e)
        {
            //ukoliko je neka datoteka odabrana
            if (fileUpload.HasFile)
            {
                //spremi ju na drugu lokaciju
                //Važno! - da bi vam lokalno radilo morate promijeniti putanju da pokazuje na neki folder na vašem računalu
                fileUpload.SaveAs("C:\\Users\\mmaini\\Documents\\" + fileUpload.FileName);
                lblRezultat.Text = "Datoteka kopirana";
            }
            else
            {
                lblRezultat.Text = "Niste odabrali datoteku";
            }

        }
    }
}