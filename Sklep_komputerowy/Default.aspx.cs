using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sklep_komputerowy
{
    
    public partial class Default : System.Web.UI.Page
    {
        public string usr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((String)Session["Username"] == null)
            {
                
            }
            else
            {
                usr = (String)Session["Username"];
                Log_bar.InnerHtml = "<h2>Witamy "+Server.HtmlEncode(usr)+"</h2>";
            }
               
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

    }
    
}