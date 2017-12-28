using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Sklep_komputerowy
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Ja_Karol\documents\visual studio 2015\Projects\Sklep_komputerowy\Sklep_komputerowy\App_Data\Database1.mdf;Integrated Security=True");
            con.Open();
            string sel = "Select count(*) from Users where Username = '"+TextBox1.Text+"'";
            SqlCommand scm = new SqlCommand(sel,con);
            int pom = Convert.ToInt32(scm.ExecuteScalar().ToString());
            if(pom == 1)
            {
                Response.Write("<script>alert('Podana nazwa użytkownika jest już zajęta')</script>");
                con.Close();
            }
            else
            {
                try
                {
                    Session["Username"] = TextBox1.Text;
                    sel = "select count(*) from Users";
                    scm = new SqlCommand(sel, con);
                    int id = Convert.ToInt32(scm.ExecuteScalar().ToString());
                    sel = "insert into Users (Id,Username,Email,Password,Country) values (@id,@name,@mail,@paswd,@count)";
                    scm = new SqlCommand(sel, con);
                    scm.Parameters.AddWithValue("@id", id);
                    scm.Parameters.AddWithValue("@name",TextBox1.Text);
                    scm.Parameters.AddWithValue("@mail", TextBox2.Text);
                    scm.Parameters.AddWithValue("@paswd", TextBox3.Text);
                    scm.Parameters.AddWithValue("@count", DropDownList1.SelectedItem.ToString());
                    scm.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("Default.aspx");
                }
                catch(Exception ex)
                {
                    Response.Write("Błąd: "+ex.ToString());
                    con.Close();
                }
            }
            
            
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}