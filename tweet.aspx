<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tweet.aspx.cs" Inherits="Twitter.tweet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
        .four{
            position:absolute;
            left:140px;
            top:120px;
            border:2px solid black;
            width:700px;
            height:270px;
        }
        #img {
            position:absolute;
            left:10px;
            top:10px;
            border-radius: 50%;
            border:2px solid black;
        }
        #TextArea1{
            position:absolute;
            border:2px solid black;
            border-radius:10px;
            top: 91px;
            left: 91px;
            height: 131px;
            width: 584px;
        }
        #Label1{
            position:absolute;
            top: 38px;
            left: 100px;
            width: 124px;
            font-size:20px;
        }
       ::placeholder { 

            text-align:center;
        }
       #Button1{
             position:absolute;
            top: 237px;
            left: 341px;
            border:2
           1px solid black;
            border-radius:8px;
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
            <h2> Tweet </h2>
        </div>

       <div class="four">  
           <img id="img" src="avatar.png" alt="Avatar" style="width:70px"/>&nbsp;
           <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
           <asp:Button ID="Button1" runat="server" Text="Tweet" OnClick="Button1_Click" />
           <asp:TextBox ID="TextArea1" placeholder="What's Happening" runat="server"></asp:TextBox>
        </div>  
  

    
       
    </form>
</body>
</html>
