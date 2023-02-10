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
    public partial class searchprofile : System.Web.UI.Page
    {
        string strConn = WebConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            Button4.Visible = false;
            
            if (Session["User"] == null)
            {
                Response.Redirect("login.aspx");
            }

            string user1 = Session["User"].ToString();
            string user2 = Session["SearchUser"].ToString();

            if (user1 == user2)
            {
                Response.Redirect("profile.aspx");
            }
            else
            {
                string strUser1 = Session["SearchUser"].ToString();

                // Display user search details

                SqlConnection objConn = new SqlConnection(strConn);
                string strQuery = "select * from users where Username='"+strUser1+"'";
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


                //current followers and following

                string strUser2 = Session["SearchUser"].ToString();
                SqlConnection objConn4 = new SqlConnection(strConn);
                SqlCommand comm = new SqlCommand("select count(*) from Followers where Username='"+strUser2+"'", objConn4);
                objConn4.Open();
                int count = (int)comm.ExecuteScalar();
                string s = count.ToString();
                Label7.Text = s;


                SqlConnection objConn3 = new SqlConnection(strConn);
                SqlCommand comm1 = new SqlCommand("select count(*) from Following where Username='"+strUser2+"'", objConn3);
                objConn3.Open();
                int count1 = (int)comm1.ExecuteScalar();
                string s1 = count1.ToString();
                Label5.Text = s1;

                //tweet

                SqlConnection objConn2 = new SqlConnection(strConn);
                string strQuery2 = "select Tweet, Date from Tweet where Username='"+strUser1+"'";
                objConn2.Open();
                SqlCommand objCmd2 = new SqlCommand(strQuery2, objConn2);
                SqlDataReader objRead2 = objCmd2.ExecuteReader();
                GridView1.DataSource = objRead2;
                GridView1.DataBind();
                objConn2.Close();



                string user3 = Session["User"].ToString();
                string user4 = Session["SearchUser"].ToString();
                //followed or not
                SqlConnection objConn5 = new SqlConnection(strConn);
                string strQuery5 = "select * from Followers where Username='"+user4+"' and Follower='"+user3+"'";
                objConn5.Open();
                SqlDataAdapter sda1 = new SqlDataAdapter(strQuery5, objConn5);
                DataTable dtable1 = new DataTable();
                sda1.Fill(dtable1);
                objConn5.Close();
                if (dtable1.Rows.Count > 0)
                {
                    Button2.Visible = false;
                    Button4.Visible = true;
                  //  Response.Write("<script>alert('unfollow')</script>");
                }
                else
                {
                    Button2.Visible = true;
                    Button4.Visible = false;
                 //   Response.Write("<script>alert('follow')</script>");
                }


            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Remove("SearchUser");
            Response.Redirect("explore.aspx");
        }


        //follow button
        protected void Button2_Click(object sender, EventArgs e)
        {

            string user1 = Session["User"].ToString();
            string user2 = Session["SearchUser"].ToString();

            Button2.Visible = false;
            Button4.Visible = true;


            // Add Followers in database

            SqlConnection objConn2 = new SqlConnection(strConn);
            string strQuery2 = "insert into Followers values('"+user2+"','"+user1+"')";
            objConn2.Open();
            SqlCommand objCmd = new SqlCommand(strQuery2, objConn2);
            int intFlag = objCmd.ExecuteNonQuery();
            objConn2.Close();
            if (intFlag > 0)
            {
                Response.Write("<script>alert('Followed')</script>");
            }
            else
            {
                Response.Write("<script>alert('Error try again in few minutes')</script>");
            }


            //Add following in database

            SqlConnection objConn5 = new SqlConnection(strConn);
            string strQuery = "insert into Following values('"+user1+"','"+user2+"')";
            objConn5.Open();
            SqlCommand objCmd1 = new SqlCommand(strQuery, objConn5);
            int intFlag1 = objCmd1.ExecuteNonQuery();
            objConn5.Close();
         


            // Display Followers and Following

            SqlConnection objConn4 = new SqlConnection(strConn);
            SqlCommand comm = new SqlCommand("select count(*) from Followers where Username='"+user2+"'", objConn4);
            objConn4.Open();
            int count = (int)comm.ExecuteScalar();
            string s = count.ToString();
            Label7.Text = s;
            objConn4.Close();

            SqlConnection objConn3 = new SqlConnection(strConn);
            SqlCommand comm1 = new SqlCommand("select count(*) from Following where Username='"+user2+"'", objConn3);
            objConn3.Open();
            int count1 = (int)comm1.ExecuteScalar();
            string s1 = count1.ToString();
            Label5.Text = s1;
            objConn3.Close();

        }

        // unfollow button
        protected void Button4_Click(object sender, EventArgs e)
        {
            Button4.Visible = false;
            Button2.Visible = true;

            string user1 = Session["User"].ToString();
            string user2 = Session["SearchUser"].ToString();


            // remover Followers in database

            SqlConnection objConn2 = new SqlConnection(strConn);
            string strQuery2 = "delete from Followers where Username='"+user2+"' and Follower='"+user1+"'";
            objConn2.Open();
            SqlCommand objCmd = new SqlCommand(strQuery2, objConn2);
            int intFlag = objCmd.ExecuteNonQuery();
            objConn2.Close();
            if (intFlag > 0)
            {
                Response.Write("<script>alert('Un-Followed')</script>");
            }
            else
            {
                Response.Write("<script>alert('Error try again in few minutes')</script>");
            }


            //remove following in database

            SqlConnection objConn5 = new SqlConnection(strConn);
            string strQuery = "delete from Following where Username='"+user1+"' and Following='" + user2+"'";
            objConn5.Open();
            SqlCommand objCmd1 = new SqlCommand(strQuery, objConn5);
            int intFlag1 = objCmd1.ExecuteNonQuery();
            objConn5.Close();


            // Display Followers and Following

            SqlConnection objConn4 = new SqlConnection(strConn);
            SqlCommand comm = new SqlCommand("select count(*) from Followers where Username='" + user2 + "'", objConn4);
            objConn4.Open();
            int count = (int)comm.ExecuteScalar();
            string s = count.ToString();
            Label7.Text = s;
            objConn4.Close();

            SqlConnection objConn3 = new SqlConnection(strConn);
            SqlCommand comm1 = new SqlCommand("select count(*) from Following where Username='" + user2 + "'", objConn3);
            objConn3.Open();
            int count1 = (int)comm1.ExecuteScalar();
            string s1 = count1.ToString();
            Label5.Text = s1;
            objConn3.Close();

            
        }


        protected void Button3_Click(object sender, EventArgs e)
        {

            Response.Redirect("searchmessage.aspx");

        }
    }
}