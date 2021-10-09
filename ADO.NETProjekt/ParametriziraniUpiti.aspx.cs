using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ADO.NETProjekt
{
    public partial class ParametriziraniUpiti : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTrazi_Click(object sender, EventArgs e)
        {
            string s = ConfigurationManager.ConnectionStrings["MojConnectionString"].ToString();
            SqlConnection conn = new SqlConnection(s);
            int drzavaId = Int32.Parse(tbUnos.Text);

            //ovo nije dobar način za prosljeđivanje upita prema bazi jer nam u textbox netko može unijeti kod kojeg ćemo proslijediti prema bazi
            //a taj kod može potencijalno i cijelu bazu pobrisati npr. 1;DROP DATABASE Organization
            //SqlCommand command = new SqlCommand("SELECT * FROM City WHERE CountryId=" + tbUnos.Text, conn);


            //bolji način gdje šaljemo parametre
            SqlCommand command = new SqlCommand("SELECT * FROM City WHERE CountryId=@id", conn);
            command.Parameters.AddWithValue("@id", tbUnos.Text);

            conn.Open();
            SqlDataReader reader = command.ExecuteReader();
            gridRezultat.DataSource = reader;
            gridRezultat.DataBind();
            reader.Close();
            conn.Close();
        }
    }
}