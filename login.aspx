<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Twitter.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         body{
         font-family: 'Chirp', sans-serif;
         font-family: 'ChirpExtended', sans-serif;
                                                
        }
        .center{
            text-align:center;
            margin-left: auto;
            margin-right: auto;
            display: block;
        }
        form{
            text-align:center;
            left: 30%;
            right: 30%;
            position:absolute;
            top: 165px;
        } .TextBox1{
            border-radius:30px;
             text-align:center;
             padding:3px;
        }
        .TextBox2{
            border-radius:30px;
             text-align:center;
             padding-right:15px;
             padding-left:15px;
             padding-top:5px;
             padding-bottom:5px;
        }
    </style>
</head>
<body>
   <div>
            <img src="twitter.jpg" alt="twitter logo" width="150" height="150" class="center" />
        </div>
    <form id="form1" runat="server">
        <div>
            <h2> Sign in to Twitter </h2>
        
            <asp:Label ID="Label3" class="label" runat="server" Text=""></asp:Label>
            <br />  <br />

            <label> Username: </label>
            <asp:TextBox ID="TextBox2"  placeholder="Enter Username" class="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />


            <label> Password: </label>
            <asp:TextBox ID="TextBox5"  placeholder="Enter Password" class="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
           

            <asp:Button ID="Button1" class="TextBox2" runat="server" Text=" Login " OnClick="Button1_Click" />
         <br />
        <br />
            New to twitter? <a href="registration.aspx"> Click here !</a>
            <br />
            <br />
</div>
    </form>
</body>
</html>
