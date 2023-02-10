<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="searchprofile.aspx.cs" Inherits="Twitter.searchprofile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style>
     body{
         font-family: 'Chirp', sans-serif;
         font-family: 'ChirpExtended', sans-serif;
                                                
        }
        .one
        {
           
            width:10%;
          
            float: left;  
            height:550px;
            text-align:center;
        }
        .two
        {
             float: left;
        }
        .three{
            position:absolute;
            left:100px;
            top:60px;
            width:88%;
            height:150px;
            border:1px solid black;
            background-image:url("cover.jpg"); 
            
        }
        #Label1{
            position:absolute;
            top: 21px;
            left: 229px;
            height: 23px;
            width: 117px;
            font-size:25px;
        }
        #Label2{
            position:absolute;
            top: 21px;
            left: 106px;
            height: 23px;
            width: 133px;
            font-size:25px;
        }
        #Label9{
            position:absolute;

            font-size:25px;
        top: 507px;
        left: 200px;
    }
        #Button1{
             position:absolute;
              border-radius:30px;
                padding:5px;
              top: 18px;
              left: 784px;
        width: 114px;
        height: 33px;
    }
    #Button2 {
        position: absolute;
        top: 328px;
        left: 361px;
        border-radius: 30px;
        border-radius: 30px;
    }  #Button4 {
        position: absolute;
        top: 328px;
        left: 361px;
        border-radius: 30px;
        border-radius: 30px;
    }
    #Button3{
        position: absolute;
   
        border-radius: 30px;
        border-radius: 30px;
        top: 329px;
        left: 449px;
    }
        #img {
            
            border-radius: 50%;
            border:2px solid black;
        }
        .four{
            position:absolute;
            left:120px;
            top:140px;
            
           

        }
        #Label3{
            font-size:28px;
        }
         #Label4{
            font-size:15px;
        }
     
        #five{
            
             position:absolute;
             left:105px;
             top:310px;
             width:180px;
             text-align:center;
        }
         #Label9{
          position:absolute;
            top: 432px;
            left: 484px;
            font-size:20px;
        } 
          #six{
            
             position:absolute;
             left:108px;
             top:380px;
             width:180px;
             text-align:center;
        }
    
              #GridView1{
        position:absolute;
            top: 461px;
            left: 153px;
            width: 655px;
             border: 2px solid white;
             text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="one">
            <br />
          <img  src="Twitterlogo.jpg" alt="Twitter logo" height="40" width="40"/>
              <br />  <br />
            <a href="HomePage.aspx">  <img  src="homeicon.jpg" alt="Twitter logo" height="70" width="70"/> </a>
             <br />  <br />
         <a href="explore.aspx">    <img  src="explore.png" alt="Twitter logo" height="50" width="50"/></a>
            <br />  <br />
          <a href="notification.aspx">     <img  src="notification.png" alt="Twitter logo" height="55" width="55"/>    </a>
             <br />  <br />
        <a href="message.aspx">       <img  src="message2.png" alt="Twitter logo" height="55" width="55"/>    </a>
            <br />  <br />
       <a href="profile.aspx">        <img  src="profile.png" alt="Twitter logo" height="50" width="50"/>   </a> 
            <br />  <br />
       <a href="tweet.aspx">        <img  src="tweet.jpg" alt="Twitter logo" height="60" width="60"/>    </a>
            
        </div>
        <label ID="Label2"> Welcome, </label><asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <asp:Button ID="Button1" runat="server"  Text="Back" OnClick="Button1_Click" />
        <div class="two">
            
        </div> 

        <div class="three">
            
        </div>
        <div class="four">  <img id="img" src="avatar.png" alt="Avatar" style="width:150px"/></div>
    
        <div ID="five" >
       <asp:Label ID="Label3" runat="server" Text=""></asp:Label><br />
         @<asp:Label ID="Label4" runat="server" Text=""></asp:Label>
        </div>
       

        <div id="six">
            <asp:Label ID="Label5" runat="server" Text=" "> </asp:Label><asp:Label ID="Label6" runat="server" Text=" Following,  "></asp:Label> 
            <asp:Label ID="Label7" runat="server" Text=" ">  </asp:Label><asp:Label ID="Label8" runat="server" Text=" Followers"></asp:Label>
        </div>


    <p>
&nbsp;&nbsp;&nbsp;
    </p>
        <asp:Button ID="Button2" runat="server" Text="Follow" OnClick="Button2_Click" />
         <asp:Button ID="Button4" runat="server" Text="Unfollow" OnClick="Button4_Click" />

         <div>
        <br />
        <asp:Label ID="Label9" runat="server" Text="Tweets"></asp:Label>
        </div>      

        <asp:GridView ID="GridView1" runat="server" CellPadding="10">
        </asp:GridView>

       
        <br /> <br /> <br />

        <asp:Button ID="Button3" runat="server" Text="Message" OnClick="Button3_Click" />

    </form>
    </body>
</html>
