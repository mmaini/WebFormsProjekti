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
    public partial class Connected : System.Web.UI.Page
    {
        private readonly SqlConnection _connection = new SqlConnection(ConfigurationManager.ConnectionStrings["MojConnectionString"].ToString());
        private SqlCommand _command;
        private SqlDataReader _dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            _connection.Open();
            _command = new SqlCommand("INSERT INTO EmployeeS(Name, Salary, Gender)VALUES(@name, @salary, @gender)", _connection);
            _command.Parameters.AddWithValue("@name", tbName.Text);
            _command.Parameters.AddWithValue("@salary", tbSalary.Text);
            _command.Parameters.AddWithValue("@gender", tbGender.Text);
            _command.ExecuteNonQuery();
            _connection.Close();
            Display();

        }


        private void Display()
        {
            _connection.Open();
            _command = new SqlCommand("SELECT * FROM Employees", _connection);
            _dr = _command.ExecuteReader();
            gvEmployees.DataSource = _dr;
            gvEmployees.DataBind();
            _dr.Close();
            _connection.Close();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            _connection.Open();
            _command = new SqlCommand("DELETE FROM Employees where Id=@id", _connection);
            _command.Parameters.AddWithValue("@id", tbId.Text);
            _command.ExecuteNonQuery();
            _connection.Close();
            Display();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            _connection.Open();
            _command =new SqlCommand("UPDATE Employees SET Salary=@salary WHERE Id=@id", _connection);
            _command.Parameters.AddWithValue("@id", tbId.Text);
            _command.Parameters.AddWithValue("@salary", tbSalary.Text);
            _command.ExecuteNonQuery();
            _connection.Close();
            Display();
        }

        protected void btnDisplay_Click(object sender, EventArgs e)
        {
            Display();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            _connection.Open();
            _command = new SqlCommand("SELECT * FROM Employees WHERE Id=@id", _connection);
            _command.Parameters.AddWithValue("@id", tbId.Text);
            _dr = _command.ExecuteReader();
            gvEmployees.DataSource = _dr;
            gvEmployees.DataBind();
            _dr.Close();
            _connection.Close();
        }

        protected void btnTotal_Click(object sender, EventArgs e)
        {
            _connection.Open();
            _command = new SqlCommand("SELECT COUNT(*) FROM Employees", _connection);
            int total = (int)_command.ExecuteScalar();
            lblTotal.Text = "Total Record:--> " + total.ToString();
            _connection.Close();
        }
    }
}