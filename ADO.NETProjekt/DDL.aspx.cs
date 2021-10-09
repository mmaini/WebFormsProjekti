using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ADO.NETProjekt
{
    public partial class DDL : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = ConfigurationManager.ConnectionStrings["MojConnectionString"].ToString();
            SqlConnection conn = new SqlConnection(s);

            SqlCommand command = new SqlCommand("SELECT * FROM Country", conn);
            conn.Open();
            SqlDataReader reader = command.ExecuteReader();

            //povezujemo DDL i rezultat
            while (reader.Read() == true)
            {
                DropDownList1.Items.Add(new ListItem(reader["Name"].ToString(), reader["Id"].ToString()));
            }

            reader.Close();
            conn.Close();








        }
    }
}