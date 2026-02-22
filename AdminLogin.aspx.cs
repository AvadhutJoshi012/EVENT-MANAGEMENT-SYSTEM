using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Event_Management_System
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        String str = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\DELL\Desktop\Major_Project\App_Data\EventManagementDB.mdf;Integrated Security=True";

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\DELL\Desktop\Major_Project\App_Data\EventManagementDB.mdf;Integrated Security=True");
       

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (username.Text.Length != 0 && password.Text.Length != 0)
            {
                SqlConnection sc = new SqlConnection(str);
                string q = "select * from AdminLogin where AdminName='" + username.Text + "' and Password='" + password.Text + "'";
                SqlCommand scm = new SqlCommand(q, sc);
                SqlDataReader dr;
                sc.Open();
                dr = scm.ExecuteReader();
                string n;
                string p;
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        n = dr["AdminName"].ToString();
                        p = dr["Password"].ToString();

                        if (n == username.Text.ToString() && p == password.Text.ToString())
                        {

                            Session["login"] = username.Text;
                            //Session["buyitem"] = null;
                            //fillcart();
                            Response.Redirect("Dashboard.aspx");

                        }
                        else
                        {

                            Response.Write("<script>alert('Login password or username is incorrect' );</script>");
                        }
                    }


                }
                else
                {

                    Response.Write("<script>alert('Login password or username is incorrect' );</script>");
                    sc.Close();
                }
                sc.Close();
            }
            else
            {
                Response.Write("<script>alert('Enter password and username.' );</script>");
            }
        }

    }
}
