using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Event_Management_System
{
    public partial class Expenses : System.Web.UI.Page
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
            string q = "insert into Expenses values(@type,@amount,@date)";

            cmd = new SqlCommand(q, con);
            cmd.Parameters.AddWithValue("@type", Type.Text);
            cmd.Parameters.AddWithValue("@amount", Amt.Text);
            cmd.Parameters.AddWithValue("@date", Date.Text);
            //cmd.Parameters.AddWithValue("@salary", Salary.Text);
            cmd.ExecuteNonQuery();
            con.Close();

            Type.Text = "";
            Amt.Text = "";
            Date.Text = "";
            //Salary.Text = "";
            Response.Redirect("Expenses.aspx");
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(str);
            con.Open();
            string q = "update Expenses set type = @type, Amt = @amount, date = @date where ID = @id";
            cmd = new SqlCommand(q, con);
            cmd.Parameters.AddWithValue("@type", Type.Text);
            cmd.Parameters.AddWithValue("@amount", Amt.Text);
            cmd.Parameters.AddWithValue("@date", Date.Text);
            //cmd.Parameters.AddWithValue("@salary", Salary.Text);
            cmd.Parameters.AddWithValue("@id", Convert.ToInt32(expensesid.Text));
            cmd.ExecuteNonQuery();
            con.Close();

            Type.Text = "";
            Amt.Text = "";
            Date.Text = "";
            //Salary.Text = "";

            Response.Redirect("Expenses.aspx");
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(str);
            con.Open();

            //string q = "DELETE FROM Expenses WHERE type = @type AND amt = @amount AND date = @date AND ID = @id";
            string q = "DELETE FROM Expenses WHERE ID = @id";
            cmd = new SqlCommand(q, con);
            cmd.Parameters.AddWithValue("@type", Type.Text);
            cmd.Parameters.AddWithValue("@amount", Amt.Text);
            cmd.Parameters.AddWithValue("@date", Date.Text);
            //cmd.Parameters.AddWithValue("@salary", Salary.Text);
            cmd.Parameters.AddWithValue("@id", Convert.ToInt32(expensesid.Text));
            cmd.ExecuteNonQuery();
            con.Close();

            Type.Text = "";
            Amt.Text = "";
            Date.Text = "";
            //Salary.Text = "";

            Response.Redirect("Expenses.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            Type.Text = row.Cells[2].Text.ToString();
            Amt.Text = row.Cells[3].Text.ToString();
            Date.Text = row.Cells[4].Text.ToString();
            //Salary.Text = row.Cells[5].Text.ToString();
            expensesid.Text = row.Cells[1].Text.ToString();
        }
    }
}