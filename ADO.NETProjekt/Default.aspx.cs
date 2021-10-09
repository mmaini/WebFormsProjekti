using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace ADO.NETProjekt
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          

            string s = ConfigurationManager.ConnectionStrings["MojConnectionString"].ToString();
            //Response.Write(s);

            //kreiramo konekciju
            SqlConnection conn = new SqlConnection(s);

            //kreiramo objekt naredbe - prima naredbu i konekciju
            SqlCommand command = new SqlCommand("SELECT * FROM Employees", conn);

            //otvaramo konekciju
            conn.Open();

            //izvršavamo naredbu i čitamo podatke iz baze
            SqlDataReader reader = command.ExecuteReader();
            //ExecuteNonQuery() - > Insert, Update, Delete
            //ExecuteReader() -> Select
            //ExecuteScalar() -> kad vraća jednu vrijednost


            //povezujemo Grid i rezultat
            GridView1.DataSource = reader;
            GridView1.DataBind();
            reader.Close();

            //zatvaramo konekciju
            conn.Close();

        }
    }
}