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
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Username1, Username, Password, Name1, Name, PhoneNo, Email1, Email;
            Name1 = TextBox1.Text;
           Name=  Name1.ToLower();

            Username1 = TextBox2.Text;
           Username = Username1.ToLower();

            PhoneNo = TextBox3.Text;

            Email1 = TextBox4.Text;
           Email=  Email1.ToLower();

            Password = TextBox5.Text;

            string strConn = WebConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
            SqlConnection objConn1 = new SqlConnection(strConn);
            string querry1 = "Select * from users where Username='"+Username+"'";
            SqlDataAdapter sda1 = new SqlDataAdapter(querry1, objConn1);
            DataTable dtable1 = new DataTable();
            sda1.Fill(dtable1);

            SqlConnection objConn2 = new SqlConnection(strConn);
            string querry2 = "Select * from users where PhoneNo='"+PhoneNo+"'";
            SqlDataAdapter sda2 = new SqlDataAdapter(querry2, objConn2);
            DataTable dtable2 = new DataTable();
            sda2.Fill(dtable2);

            SqlConnection objConn3 = new SqlConnection(strConn);
            string querry3 = "Select * from users where Email='"+Email+"'";
            SqlDataAdapter sda3 = new SqlDataAdapter(querry3, objConn3);
            DataTable dtable3 = new DataTable();
            sda3.Fill(dtable3);

            if (dtable1.Rows.Count > 0)
            {
                Label3.Text = " * Username Already Taken * ";
                


            }
            else if (dtable2.Rows.Count > 0)
            {
                Label3.Text = " * Account already exist with this Phone No * ";
               


            }
            else if (dtable3.Rows.Count > 0)
            {
                Label3.Text = " * Account already exist with this Email ID * ";
            }
            else
            {
                
                SqlConnection objConn = new SqlConnection(strConn);
                string strQuery = "insert into users values('"+Name+"','"+Username+"','"+PhoneNo+"','"+Email+"','"+Password+"')";
                objConn.Open();
                SqlCommand objCmd = new SqlCommand(strQuery, objConn);
                int intFlag = objCmd.ExecuteNonQuery();
                if (intFlag > 0)
                {
                    Response.Write("<script>alert('Account Created Successfully')</script>");
                }
                objConn.Close();

                int Followers = 0;
                int Following = 0;

                SqlConnection objConn4 = new SqlConnection(strConn);
                string strQuery2 = "insert into follow values('"+Username+"','"+Following+"','"+Followers+"')";
                objConn4.Open();
                SqlCommand objCmd2 = new SqlCommand(strQuery2, objConn4);
                int intFlag2 = objCmd2.ExecuteNonQuery();
                objConn4.Close();


                
                string User = "Null";
                SqlConnection objConn5 = new SqlConnection(strConn);
                string strQuery3 = "insert into follow1 values('"+Username+"','"+Following+"','"+Followers+"','"+User+"')";
                objConn5.Open();
                SqlCommand objCmd5 = new SqlCommand(strQuery3, objConn5);
                int intFlag5 = objCmd5.ExecuteNonQuery();
                if (intFlag5 > 0 && intFlag2 >0 )
                {
                    Response.Redirect("login.aspx");
                }
                objConn4.Close();
                


            }
        }
    }
}