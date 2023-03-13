using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["id"]==null)
            {
                lgnPlaceholder.Visible = true;
                logoutPlaceholder1.Visible = false;
                logoutPlaceholder2.Visible = false;
            }
            else
            {
                lgnPlaceholder.Visible = false;
                logoutPlaceholder1.Visible = true;
                logoutPlaceholder2.Visible = true;
            }
        }
    }
}