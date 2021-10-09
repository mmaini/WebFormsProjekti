using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPrimjerProjekt
{

    //Tablicu dodajemo preko Table -> Insert table pa odaberemo željene postavke
    //Master stranica se nikad ne može samostalno prikazati
    //ContentPlaceHolder na Master stranici mora biti prazan, u njega će se ubaciti sadržaj pojedinih stranica

    public partial class MojaMasterStranica : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}