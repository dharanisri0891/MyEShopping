<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home page.aspx.cs" Inherits="MyEshoppingWebsitee.Home_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home page</title>

    <script src="http://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous">

    </script>
     <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
   <meta http-equiv="X-UA-Compatible" content="IE-edge"/>
    <link href="css/custome.css" rel="stylesheet" />
   
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script>

        $(document).ready(function myfunction()
        {
            $("#btnCart").click(function myfunction()
            {
                window.location.href = "Cart.aspx";
            });
        });

    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class ="navbar navbar-default navbar-fixed-top" role ="navigation">
            <div class ="container ">
                <div class ="navbar-header">
                    <button type="button" class ="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                        <span class ="sr-only">Toggle navigation</span>
                        <span class ="icon-bar"></span>
                        <span class ="icon-bar"></span>
                        <span class ="icon-bar"></span>

                    </button>
                    <a class ="navbar-brand" href ="UserHome.aspx" ><span ><img src="icons/image 1.jpg" alt="MyEShoppoing" height ="30" />My Shopping</span> </a>

                </div>
                <div class ="navbar-collapse collapse">
                    <ul class ="nav navbar-nav navbar-right">
                        <li ><a href ="UserHome.aspx">Home</a> </li>
                         <li ><a href ="About.aspx">About</a> </li>
                       
                        <li class ="drodown">
                            <a href ="#" class ="dropdown-toggle" data-toggle="dropdown">Products<b class ="caret"></b></a>
                            <ul class ="dropdown-menu ">
                                 <li class ="dropdown-header ">MEN</li>
                                    <li role="separator" class ="divider "></li>
                                    <li ><a href ="#">Shirts</a></li>
                                    <li ><a href ="#">Pants</a></li>
                                    <li ><a href ="#">Denim</a></li>
                                     <li ><a href ="#">shorts</a></li>
                                    <li role="separator" class ="divider "></li>


                                    <li class ="dropdown-header ">WOMEN</li>
                                    <li role="separator" class ="divider "></li>
                                    <li ><a href ="#">Tops</a></li>
                                    <li ><a href ="#">Kurtas</a></li>
                                     <li ><a href ="#">frocks</a></li>
                                    <li ><a href ="#">Palazzo</a></li>
                            </ul>

                        </li>
                        <li>
                            <button id="btnCart" class="btn btn-primary navbar-btn" type="button">
                                Cart<span class="badge" id="pCount" runat="server"></span>

                            </button>
                        
                           
                        </li>
                        
                    </ul>
                </div>
            </div>
        </div>
     </div>

     
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />


        <asp:Label ID="lblSuccess" runat="server" CssClass ="text-success "></asp:Label>

       
      
    </form>
</body>
</html>
