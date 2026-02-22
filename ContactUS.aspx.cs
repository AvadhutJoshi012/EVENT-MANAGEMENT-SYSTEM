using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Event_Management_System
{

    public partial class ContactUS : System.Web.UI.Page
    {
        String str = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\DELL\Desktop\Major_Project\App_Data\EventManagementDB.mdf;Integrated Security=True";
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //con = new SqlConnection(str);
            //con.Open();
            //string q= "insert into ContactUs values(@name,@email,@mobile,@message)";
            //cmd=new SqlCommand(q,con);
            //cmd.Parameters.AddWithValue("@name",FullName.Text);
            //cmd.Parameters.AddWithValue("@email",Address.Text);
            //cmd.Parameters.AddWithValue("@mobile",Number.Text);
            //cmd.Parameters.AddWithValue("@message", Message1.Text);
            //cmd.ExecuteNonQuery();
            //con.Close();

            //FullName.Text = "";
            //Address.Text = "";
            //Number.Text = "";
            //Message1.Text = "";


            using (SqlConnection con = new SqlConnection(str))
            {
                con.Open();
                string q = "INSERT INTO ContactUs  VALUES (@name, @email, @mobile, @message)";
                using (SqlCommand cmd = new SqlCommand(q, con))
                {
                    cmd.Parameters.AddWithValue("@name", FullName.Text);
                    cmd.Parameters.AddWithValue("@email", Address.Text);
                    cmd.Parameters.AddWithValue("@mobile", Number.Text.ToString());
                    cmd.Parameters.AddWithValue("@message", Message1.Text);
                    cmd.ExecuteNonQuery();
                }
                con.Close();
            }

            FullName.Text = "";
            Address.Text = "";
            Number.Text = "";
            Message1.Text = "";

        }
    }
}