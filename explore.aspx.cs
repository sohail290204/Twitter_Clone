using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Twitter
{
    public partial class explore : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("login.aspx");
            }
         
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Username, Username1;

            Username1 = TextBox1.Text;
            Username = Username1.ToLower();

            string strConn = WebConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
            SqlConnection objConn1 = new SqlConnection(strConn);
            String querry1 = "Select * from users where Username ='"+Username+"'";
            SqlDataAdapter sda1 = new SqlDataAdapter(querry1, objConn1);
            DataTable dtable1 = new DataTable();
            sda1.Fill(dtable1);

            if (dtable1.Rows.Count > 0)
            {
                Session["SearchUser"] = Username;
                Response.Redirect("searchprofile.aspx");
                Label1.Text = " * Yes User Available * ";
            }
            else
            {
                Label1.Text = " * User with this username does not exist * ";

            }
        }
    }
}