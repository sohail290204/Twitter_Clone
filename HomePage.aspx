<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Twitter.HomePage" %>

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
        #GridView1{
            position:absolute;
            top: 116px;
            left: 157px;
            width: 636px;
             border: 2px solid white;
             text-align:center;
        height: 200px;
    }
        #Label1{
            position:absolute;
        top: 76px;
        left: 196px;
        height: 16px;
        width: 183px;
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
        <div class="two">
          <h2>Home</h2> 
          <h3>Welcome, <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </h3> 
        </div>
       
        <asp:GridView ID="GridView1" runat="server" CellPadding="20" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        </asp:GridView>
       
    </form>
</body>
</html>
