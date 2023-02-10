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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label3.Text = " ";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String Username, Password;
           
            string Username1 = TextBox2.Text;
            Username = Username1.ToLower();
            Password = TextBox5.Text;
           // String abc = "hello";


            string strConn = WebConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
            SqlConnection objConn1 = new SqlConnection(strConn);
            String querry1 = "Select * from users where Username ='"+Username+"' and Password='"+Password+"'";
            SqlDataAdapter sda1 = new SqlDataAdapter(querry1, objConn1);
            DataTable dtable1 = new DataTable();
            sda1.Fill(dtable1);

            if (dtable1.Rows.Count > 0)
            {
                Label3.Text = " ";
                Session["User"] = Username;
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                Label3.Text = " * Invalid UserName or Password * ";
            }

        }
    }
}