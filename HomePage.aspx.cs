using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Twitter
{
    public partial class HomePage : System.Web.UI.Page
    {

        string strConn = WebConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                string strUser = Session["User"].ToString();

                SqlConnection objConn2 = new SqlConnection(strConn);
                string strQuery2 = "select * from Tweet";
                objConn2.Open();
                SqlCommand objCmd2 = new SqlCommand(strQuery2, objConn2);
                SqlDataReader objRead2 = objCmd2.ExecuteReader();
                GridView1.DataSource = objRead2;
                GridView1.DataBind();
                objConn2.Close();

                Label1.Text = strUser;

            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}