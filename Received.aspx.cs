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
    public partial class Received : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strConn = WebConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
            if (Session["User"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {

                string strUser = Session["User"].ToString();
                SqlConnection objConn2 = new SqlConnection(strConn);
                string strQuery2 = "select Fr, Message from msg where Too='" + strUser + "'";
                objConn2.Open();
                SqlCommand objCmd2 = new SqlCommand(strQuery2, objConn2);
                SqlDataReader objRead2 = objCmd2.ExecuteReader();
                GridView1.DataSource = objRead2;
                GridView1.DataBind();
                objConn2.Close();

            }
        }
    }
}