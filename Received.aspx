<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Received.aspx.cs" Inherits="Twitter.Received" %>

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
            height: 42px;
         }
         a{
            color:black;
         }
         .three
         {
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
        .four
        {
            position:absolute;
             float: left;
            width: 833px;
            top: 135px;
            left: 91px;
            height: 550px;
        }
        GridView1{
            position:absolute;
            border: 2px solid white;
            text-align:center;
        }
        h2{
            text-align:center;
        }
        #fr{
            position:absolute;
         top: 120px;
         left: 90px;
         background:white;
         width: 110px;
         height: 28px;
         margin-bottom: 0px;
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

        <div class="four"><br />
            <label> <h2>Received Message </h2> </label><br />
            <label id="fr"><b>From</b></label>
            <asp:GridView ID="GridView1" runat="server" CellPadding="20" Width="766px" style="margin-left: 47px" BorderColor="White"></asp:GridView>
        </div>

    </form>
</body>
</html>
