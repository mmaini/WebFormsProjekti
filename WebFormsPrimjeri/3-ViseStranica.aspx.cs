using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsPrimjeri
{
    public partial class _3_ViseStranica : System.Web.UI.Page
    {
        //Načini ubacivanja navigacije na stranicu
        //1. Dodamo HyperLink kontrolu te joj postavimo NavigateUrl
        //2. Dodamo neki obični tekst, označimo željeni dio te ga pretverimo u HyperLink odabirom opcije Convert To Hyperlink iz alatne trake
        //3. Pomoću ImageButton kontrole - dodamo kontrolu na stranicu, povežemo event sa kontrolom (dupli klik na kontrolu nam automatski generira event u .cs datoteci
        //4. Drag & Drop stranice u Design modu - dok smo u Design modu iz Solution explorera povučemo stranicu u prozor
        //5. Pomoću buttona - dodamo obični button, povežemo ga s događajem na koji želimo reagirati te napravimo preusmjeravanje
        //6. Pomoću LinkButton kontrole - dodamo kontrolu na stranicu, povežemo ju s događajem na koji želimo reagirati te napravimo preusmjeravanje

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDummy_Click(object sender, EventArgs e)
        {
            //preusmjeravanje na neku drugu stranicu, paziti na putanju
            Response.Redirect("DummyPage.aspx");
        }

        protected void lbDummy_Click(object sender, EventArgs e)
        {
            //preusmjeravanje na neku drugu stranicu, paziti na putanju
            Response.Redirect("DummyPage.aspx");
        }

        protected void imgLink_Click(object sender, ImageClickEventArgs e)
        {
            //preusmjeravanje na neku drugu stranicu, paziti na putanju
            Response.Redirect("DummyPage.aspx");
        }
    }
}