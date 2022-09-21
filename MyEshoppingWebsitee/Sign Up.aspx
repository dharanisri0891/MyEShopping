<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign Up.aspx.cs" Inherits="MyEshoppingWebsitee.Sign_Up" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>

    <meta charset="utf-8" />
    <meta name="viewpoint" content="width=device-width, initial-scale=1" />
    <meta https-equiv="X-UA-Compatible" content="IE-edge" />
    <link href="css/custome.css" rel="stylesheet" />


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


    <style type="text/css">
        .auto-style1 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 148%;
            left: 6px;
            top: 5px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style2 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 91.66666667%;
            left: 4px;
            top: 12px;
            height: 42px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style3 {
            width : 316px;
            height: 512px;
            position : absolute;
            top: 149px;
            bottom : 214px;
            left : 558px;
            right: 779px;
            margin : auto;
        }
        .auto-style4 {
            width : auto;
            height: 184px;
            position : absolute;
            top: 646px;
            bottom: 45px;
            left: 17px;
            right: -17px;
            margin : auto;
        }
    </style>


</head>
<body>

   
       
           
    <form id="form1" runat="server">
        <div class ="auto-style3">
            <label class="auto-style2">UserName:</label>
             <div class ="col-xs-11">
                 <asp:TextBox ID ="txtUname" runat ="server" class ="form-control" placeholder ="Enter Your Name"></asp:TextBox>
             </div>

            <label class="col-xs-11">Password:</label>
             <div class ="col-xs-11">
                 <asp:TextBox ID ="txtpassword" runat ="server" class ="form-control" placeholder ="Enter Your password"></asp:TextBox>
             </div>

            <label class="col-xs-11">Confirm Password:</label>
             <div class ="col-xs-11">
                 <asp:TextBox ID ="txtcpassword" runat ="server" class ="form-control" placeholder ="Confirm your password"></asp:TextBox>
             </div>
            

            <label class="col-xs-11">Full Name:</label>
             <div class ="col-xs-11">
                 <asp:TextBox ID ="txtname" runat ="server" class ="form-control" placeholder ="Enter Your Full Name"></asp:TextBox>
             </div>

            <label class="col-xs-11">Email:</label>
             <div class ="col-xs-11">
                 <asp:TextBox ID ="txtemail" runat ="server" class ="form-control" placeholder ="Enter Your Email"></asp:TextBox>
             </div>

             <label class="col-xs-11"></label>
            <div class ="auto-style1">
                <asp:Button ID="txtsignup" class="btn btn-success" runat ="server" Text="SignUp" OnClick="txtsignup_Click" />

                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>

            </div>

        </div>

           <!---Footer content--->
        <hr />
           <footer class="auto-style4">

            <div class ="container ">
                <p class ="pull-right "><a href ="#">Back to Top</a></p>
                <p> &copy;MyEshopping &middot; <a href ="WebForm1.aspx">Home</a>&middot;<a href ="#">About</a>&middot; <a href ="#">Contact Us</a>&middot; <a href ="#">Products</a>&middot;</p>

            </div>
        </footer>
        <!---Footer content  End--->


    </form>
</body>
</html>
