using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsPrimjeri
{
    public partial class _11_ValidacijskeKontrole : System.Web.UI.Page
    {
        //Za automatsku validaciju potrebno u Web.config dodati
        //<appSettings>
        //<add key = "ValidationSettings:UnobtrusiveValidationMode"
        //value="None"/>
        //</appSettings>


        //RequiredFieldValidator - za obavezna polja- obavezno definirati svojstvo ControlToValidate, opcionalno: ErrorMessage, SetFocusOnError, Text
        //CompareValiadator - za usporedbu 2 kontrole - obavezno treba postaviti ControlToValidate i ControlToCompare
        //ReqularExpressionValidator - za polja koja je moguće validirati pomoću Regexa - postaviti ValidationExpression
        //RangeValidator - kada očekujemo vrijednost unutar nekog raspona - potrebno postaviti MaximumValue i MinimumValue te Type

        //ValidationSummary - sažetak svih validacijskih grešaka

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}