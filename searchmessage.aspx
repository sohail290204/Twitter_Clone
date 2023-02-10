<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="searchmessage.aspx.cs" Inherits="Twitter.searchmessage" %>

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
            text-align:center;
            top:192px;
            left:48px;
            width:85%;

        }
         ::placeholder { 

            text-align:center;
        }
           #TextArea1{
            position:absolute;
            border:2px solid black;
            border-radius:10px;
            top: 253px;
            left: 157px;
            height: 51px;
            width: 583px;
        }
        #Button1{
        padding: 5px 15px;
        position:absolute;
        top: 346px;
        left: 394px;
        border-radius:30px;
        text-align:center;
    }
    #TextBox1 {
        position: absolute;
        top: 91px;
        left: 255px;
        width: 459px;
        height: 26px;
        border-radius: 30px;
        text-align: center;
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
            <h2>Message </h2>
          
        </div>

        <div class="three">
        <asp:Label ID="Label1" runat="server" Text="Enter Your Message "></asp:Label>
        </div>
         <asp:TextBox ID="TextArea1" placeholder="Type Something" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Send message" OnClick="Button1_Click" />
 
    </form>
</body>
</html>
