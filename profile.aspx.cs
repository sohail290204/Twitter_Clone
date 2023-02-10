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
    public partial class profile : System.Web.UI.Page
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

                SqlConnection objConn = new SqlConnection(strConn);
                string strQuery = "select * from users where Username='" + strUser + "'";
                objConn.Open();
                SqlCommand objCmd = new SqlCommand(strQuery, objConn);
                SqlDataReader objRead = objCmd.ExecuteReader();
                if (objRead.Read())
                {
                    string Name = objRead.GetString(0);
                    string Username = objRead.GetString(1);
                    Label1.Text = Name;
                    Label3.Text = Name;
                    Label4.Text = Username;
                }

                SqlConnection objConn4 = new SqlConnection(strConn);
                SqlCommand comm = new SqlCommand("select count(*) from Followers where Username='"+strUser+"'", objConn4);
                objConn4.Open();
                int count = (int)comm.ExecuteScalar();
                string s = count.ToString();
                Label7.Text = s;
                objConn4.Close();

                SqlConnection objConn3 = new SqlConnection(strConn);
                SqlCommand comm1 = new SqlCommand("select count(*) from Following where Username='"+strUser+"'", objConn3);
                objConn3.Open();
                int count1 = (int)comm1.ExecuteScalar();
                string s1 = count1.ToString();
                Label5.Text = s1;
                objConn3.Close();

                SqlConnection objConn2 = new SqlConnection(strConn);
                string strQuery2 = "select Tweet, Date from Tweet where Username='" + strUser+"'";
                objConn2.Open();
                SqlCommand objCmd2 = new SqlCommand(strQuery2, objConn2);
                SqlDataReader objRead2 = objCmd2.ExecuteReader();
                GridView1.DataSource = objRead2;
                GridView1.DataBind();
                objConn2.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Remove("User");
            Response.Redirect("login.aspx");
        }
    }
}