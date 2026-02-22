using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

namespace Event_Management_System
{
    public partial class Employee : System.Web.UI.Page
    {
        String str = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\DELL\Desktop\Major_Project\App_Data\EventManagementDB.mdf;Integrated Security=True";
        SqlConnection con;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Add_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(str);
            con.Open();
            string q = "insert into Employee values(@name,@age,@designation,@salary)";

            cmd = new SqlCommand(q, con);
            cmd.Parameters.AddWithValue("@name", Name.Text);
            cmd.Parameters.AddWithValue("@age", Age.Text);
            cmd.Parameters.AddWithValue("@designation", Designation.Text);
            cmd.Parameters.AddWithValue("@salary", Salary.Text);
            cmd.ExecuteNonQuery();
            con.Close();

            Name.Text = "";
            Age.Text = "";
            Designation.Text = "";
            Salary.Text = "";
            Response.Redirect("Employees.aspx");

        }

        protected void Update_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(str);
            con.Open();
            string q = "update Employee set name = @name, age = @age, designation = @designation, salary = @salary where ID = @id";
            cmd = new SqlCommand(q, con);
            cmd.Parameters.AddWithValue("@name", Name.Text);
            cmd.Parameters.AddWithValue("@age", Age.Text);
            cmd.Parameters.AddWithValue("@designation", Designation.Text);
            cmd.Parameters.AddWithValue("@salary", Salary.Text);
            cmd.Parameters.AddWithValue("@id", Convert.ToInt32(UpdateID.Text));
            cmd.ExecuteNonQuery();
            con.Close();

            Name.Text = "";
            Age.Text = "";
            Designation.Text = "";
            Salary.Text = "";

            Response.Redirect("Employees.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            Name.Text = row.Cells[2].Text.ToString();
            Age.Text = row.Cells[3].Text.ToString();
            Designation.Text = row.Cells[4].Text.ToString();
            Salary.Text = row.Cells[5].Text.ToString();
            UpdateID.Text = row.Cells[1].Text.ToString();
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(str);
            con.Open();

            string q = "DELETE FROM Employee WHERE name = @name AND age = @age AND designation = @designation AND salary = @salary AND ID = @id";
            cmd = new SqlCommand(q, con);
            cmd.Parameters.AddWithValue("@name", Name.Text);
            cmd.Parameters.AddWithValue("@age", Age.Text);
            cmd.Parameters.AddWithValue("@designation", Designation.Text);
            cmd.Parameters.AddWithValue("@salary", Salary.Text);
            cmd.Parameters.AddWithValue("@id", Convert.ToInt32(UpdateID.Text));
            cmd.ExecuteNonQuery();
            con.Close();

            Name.Text = "";
            Age.Text = "";
            Designation.Text = "";
            Salary.Text = "";

            Response.Redirect("Employees.aspx");

        }
    }
}