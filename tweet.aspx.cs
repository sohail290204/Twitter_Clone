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
    public partial class tweet : System.Web.UI.Page
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
                string strUser1 = Session["User"].ToString();
                SqlConnection objConn = new SqlConnection(strConn);
                string strQuery = "select * from users where Username='" + strUser1 + "'";
                objConn.Open();
                SqlCommand objCmd = new SqlCommand(strQuery, objConn);
                SqlDataReader objRead = objCmd.ExecuteReader();
                if (objRead.Read())
                {
                    string Name = objRead.GetString(0);
                    Label1.Text = Name;
                }
            }



        }


        protected void Button1_Click(object sender, EventArgs e)
        {

            string tweet = TextArea1.Text; 
            string strUser1 = Session["User"].ToString();
            DateTime a = DateTime.Now;
            string date_str = a.ToString("dd/MM/yyyy");
            SqlConnection objConn1 = new SqlConnection(strConn);
            string strQuery = "insert into Tweet values(@Username, @Tweet, @Date)";
            objConn1.Open();
            SqlCommand objCmd = new SqlCommand(strQuery, objConn1);
            objCmd.Parameters.AddWithValue("@Username", strUser1);
            objCmd.Parameters.AddWithValue("@Tweet", tweet);
            objCmd.Parameters.AddWithValue("@Date", date_str);
            int intFlag = objCmd.ExecuteNonQuery();
            if (intFlag > 0)
            {
                Response.Write("<script>alert('Your Tweet is public Now')</script>");
                Response.Redirect("Profile.aspx");
            }
            else
            {
                Response.Write("<script>alert('Error')</script>");
            }


        }
    }
}