using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Take_a_Test
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["un"] = "anonymous";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Session["un"]= 
            Response.Redirect("profile.aspx");
        }
    }
}
