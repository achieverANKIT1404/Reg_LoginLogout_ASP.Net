using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lgn_Click(object sender, EventArgs e)
        {
            con.Open();
            string checkUser = "select id,email,fname,lname from [Regtb] where email=@email and password=@password";
            SqlCommand checkCM = new SqlCommand(checkUser,con);

            checkCM.Parameters.AddWithValue("@email",email.Text.ToString());
            checkCM.Parameters.AddWithValue("@password", password.Text.ToString());

            SqlDataReader read = checkCM.ExecuteReader();
            if (read.Read())
            {
                Session["id"] = read.GetValue(0).ToString();
                Session["email"] = read.GetValue(1).ToString();
                Session["fname"] = read.GetValue(2).ToString();
                Session["lname"] = read.GetValue(3).ToString();

                Response.Redirect("Home.aspx");
            }
            else
            {
                errorMsg.Text = "Invalid Username OR Password!";
                errorMsg.ForeColor = System.Drawing.Color.Tomato;
                con.Close();
            }

        }
    }
}