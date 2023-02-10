<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="message.aspx.cs" Inherits="Twitter.message" %>

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
        height: 42px;
     }
     .three{
        float: left;
        height:50px;
        width: 805px;
        margin-left: 0px;
        position:relative;
        text-align:center;
        top: 68px;
        left: -22px;
        font-size:25px;
     }
     a{
         color:black;
     }
    #GridView1{
        position:relative;
        width: 655px;
        border: 2px solid white;
        text-align:center;
    }
    #GridView2{
         width: 655px;
         border: 2px solid white;
         text-align:center;
    }
    #from{
        position:absolute;
        top: 168px;
        background-color:white;
        left: 162px;
        width: 97px;
        padding:2px;
    }
   #from1{
        position:absolute;
        top: 545px;
        background-color:white;
        left: 163px;
        width: 97px;
        padding:2px;
    }

    #from2{
        position:absolute;
        top: 168px;
        background-color:white;
        left: 162px;
        width: 97px;
        padding:2px;
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
           <h2> message</h2></div>
            <div class="three">
             <label id="rec"> <a href="Received.aspx"><b>Received</b></a> </label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
             <label id="rec1"><a href="Send.aspx"><b>Send</b></a></label>
            </div>

       
    </form>
</body>
</html>
