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
    public partial class searchmessage : System.Web.UI.Page
    {
        string strConn = WebConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string To = Session["SearchUser"].ToString();
            string From = Session["User"].ToString();
            string msg = TextArea1.Text;

            SqlConnection objConn = new SqlConnection(strConn);
            string strQuery = "insert into msg values('"+From+"','"+ msg+"','"+To+"')";
            objConn.Open();
            SqlCommand objCmd = new SqlCommand(strQuery, objConn);
            int intFlag = objCmd.ExecuteNonQuery();
            if (intFlag > 0)
            {
                Response.Write("<script>alert('Message send Successfully')</script>");
            }
            objConn.Close();
        }
    }
}