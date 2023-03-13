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
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void reg_Click(object sender, EventArgs e)
        {
            con.Open();
            string insertUser = "insert into [Regtb] (fname,lname,email,password) values(@fname,@lname,@email,@password)";

            SqlCommand cmUser = new SqlCommand(insertUser, con);
            cmUser.Parameters.AddWithValue("@fname", fname.Text.ToString());
            cmUser.Parameters.AddWithValue("@lname", lname.Text.ToString());
            cmUser.Parameters.AddWithValue("@email", email.Text.ToString());
            cmUser.Parameters.AddWithValue("@password", password.Text.ToString());
            cmUser.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Login.aspx");
        }
    }
}