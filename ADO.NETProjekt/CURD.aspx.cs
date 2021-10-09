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
    public partial class CURD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            string s = ConfigurationManager.ConnectionStrings["MojConnectionString"].ToString();
            SqlConnection conn = new SqlConnection(s);
            
            SqlCommand command = new SqlCommand("INSERT INTO Employees VALUES('Jure Juric', 4000, 'M')", conn);
            conn.Open();
            command.ExecuteNonQuery();
            conn.Close();
        }

        protected void btnRead_Click(object sender, EventArgs e)
        {
            string s = ConfigurationManager.ConnectionStrings["MojConnectionString"].ToString();
            SqlConnection conn = new SqlConnection(s);
            SqlCommand command = new SqlCommand("SELECT * FROM Employees", conn);
            conn.Open();
            SqlDataReader reader = command.ExecuteReader();
            gridZaposlenici.DataSource = reader;
            gridZaposlenici.DataBind();
            reader.Close();
            conn.Close();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string s = ConfigurationManager.ConnectionStrings["MojConnectionString"].ToString();
            SqlConnection conn = new SqlConnection(s);


           //TODO: potrebno ubaciti id nakon inserta u tablicu 
            SqlCommand command = new SqlCommand("Update Employees SET Salary = 7000 WHERE ID= ", conn);
            conn.Open();
            command.ExecuteNonQuery();
            conn.Close();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string s = ConfigurationManager.ConnectionStrings["MojConnectionString"].ToString();
            SqlConnection conn = new SqlConnection(s);


            //TODO: potrebno ubaciti id nakon inserta u tablicu 
            SqlCommand command = new SqlCommand("DELETE FROM Employees WHERE ID= ", conn);
            conn.Open();
            command.ExecuteNonQuery();
            conn.Close();
        }
    }
}