<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="Twitter.profile" %>

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
            width: 329px;
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
        #Button1{
             position:absolute;

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
         #Label9{
          position:absolute;
            top: 432px;
            left: 484px;
        } 
    
         
        #five{
            
             position:absolute;
             left:105px;
             top:310px;
             width:223px;
             text-align:center;
        }
          #six{
            
             position:absolute;
             left:108px;
             top:380px;
             width:226px;
             text-align:center;
        }
    #GridView1{
        position:absolute;
            top: 470px;
            left: 128px;
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
        <asp:Button ID="Button1" runat="server" style="margin-bottom: 39px; top: 19px; left: 733px;" Text="Log Out" OnClick="Button1_Click" />
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


        
    <div>
        <br />
        <asp:Label ID="Label9" runat="server" Text="Tweets"></asp:Label>
    </div>

       

      
        <asp:GridView ID="GridView1" runat="server" CellPadding="10">
        </asp:GridView>

       
        <br /> <br /> <br />
      
    </form>



</body>
</html>
