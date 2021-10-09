using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace ADO.NETProjekt
{
    public partial class Disconnected : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDisplay_Click(object sender, EventArgs e)
        { 
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["MojConnectionString"].ToString());
            SqlCommand command = new SqlCommand("SELECT * FROM Employees", connection);

            DataSet ds = new DataSet();

            SqlDataAdapter da = new SqlDataAdapter(command);
            //otvara konekciju, sprema podatke u tablicu Emp i zatvara konekciju
            //nad tablicom Emp možemo obavljati sve operacije koje želimo
            da.Fill(ds, "Emp");


            //kreiramo novi redak
            DataRow row = ds.Tables["Emp"].NewRow();
            row["Name"] = "Ime";
            row["Salary"] = 1111;
            row["Gender"] = "M";
            //dodajemo ga tablici
            ds.Tables["Emp"].Rows.Add(row);
            SqlCommandBuilder cmdb = new SqlCommandBuilder(da);
            //ažuriramo tablicu u bazi
            da.Update(ds, "Emp");
            //ispraznimo sadržaj dataset-a
            ds.Clear();
            //ponovno učitamo
            da.Fill(ds, "Emp");


            //ažuriramo neki podatak u tablici
            ds.Tables["Emp"].Rows[1]["Name"] = "Novo ime";
            da.Update(ds, "Emp");
            //ispraznimo sadržaj dataset-a
            ds.Clear();
            //ponovno učitamo
            da.Fill(ds, "Emp");


            //brišemo zadnji dodani redak
            int brojRedaka = ds.Tables["Emp"].Rows.Count;
            //označi redak obrisanim
            ds.Tables["Emp"].Rows[brojRedaka - 1].Delete();
            //ažuriraj bazu
            da.Update(ds, "Emp");
            //ispraznimo sadržaj dataset-a
            ds.Clear();
            //ponovno učitamo
            da.Fill(ds, "Emp");

            //povezujemo grid i tablicu
            gvEmployees.DataSource = ds.Tables["Emp"];
            gvEmployees.DataBind();
        }

 
    }
}