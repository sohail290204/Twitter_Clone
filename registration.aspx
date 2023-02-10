<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="Twitter.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <style>
@import url('https://fonts.cdnfonts.com/css/chirp-2');
</style>
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
        }
        .TextBox1{
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
        #Label1{
            position:absolute;
            top: 124px;
            left: 350px;
        }
         #Label2{
            position:absolute;
            
            left: 350px;
        }
          #Label2{
          color:red;
        }
          #emailvalid{
              position:absolute;
          }



     
    </style>
</head>
<body>
      <div>
            <img src="twitter.jpg" alt="twitter logo" width="150" height="150" class="center" />
        </div>
    <form id="form1" runat="server">
        <div>
            <h2> Join Twitter today </h2>
            
             <asp:Label ID="Label3" class="label" runat="server" Text=""></asp:Label>
             <br />  <br />
            <label> Name: </label>
            <asp:TextBox ID="TextBox1" placeholder="Enter name" class="TextBox1" runat="server"></asp:TextBox>
          <!--  <asp:RequiredFieldValidator ID="validnm" runat="server" ControlToValidate="TextBox1" ErrorMessage="Name required compulsarily!"></asp:RequiredFieldValidator>  -->

            <br />
            <br />

             <label> Username: </label>
            <asp:TextBox ID="TextBox2"  placeholder="Enter Username" class="TextBox1" runat="server"></asp:TextBox>
         <!--    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="User-Name required compulsarily!"></asp:RequiredFieldValidator>  -->
            <br />
            <br />

             <label> PhoneNo: </label>
            <asp:TextBox ID="TextBox3"  placeholder="Enter PhoneNo" class="TextBox1" runat="server"></asp:TextBox>
         <!--    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Phone No required compulsarily!"></asp:RequiredFieldValidator>-->
            <br />
            <br />

             <label> Email: </label>
            <asp:TextBox ID="TextBox4"  placeholder="Enter Email" class="TextBox1" runat="server"></asp:TextBox>
           
            <!--   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Email required compulsarily!"></asp:RequiredFieldValidator>-->
           <!-- <asp:RegularExpressionValidator ID="emailvalid" runat="server" ControlToValidate="TextBox4" ErrorMessage="Check your email." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>  -->
            <br />
            <br />

            <label> Password: </label>
            
            <asp:TextBox ID="TextBox5"  placeholder="Enter Password" class="TextBox1" runat="server"></asp:TextBox>
          <!--   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="Password required compulsarily!"></asp:RequiredFieldValidator>-->
            <br />
            <br />
           

            <asp:Button ID="Button1" class="TextBox2" runat="server" Text=" Register " OnClick="Button1_Click" />
        </div><br />
       Already have an account? <a href="login.aspx"> Click here !</a>
         <br />
            <br />
    </form>
</body>
</html>
