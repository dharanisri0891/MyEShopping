 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MyEshoppingWebsitee.WebForm11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My E-Shopping Website</title>

    <meta charset="utf-8" />
    <meta name="viewpoint" content="width=device-width, initial-scale=1" />
    <meta https-equiv="X-UA-Compatible" content="IE-edge" />
    <link href="css/custome.css" rel="stylesheet" />


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class ="navbar navbar-default navbar-fixed-top" role ="navigation">
                <div class ="container ">
                    <div class ="navbar-header">
                        <button type="button" class ="navbar-toogle " data-toggle="collapse" data-target=".navbar-collapse">
                         <span class ="sr-only"></span>
                         <span class ="icon-bar"></span>
                         </button>
                        <a class ="navbar-brand" href ="WebForm1.aspx" >&nbsp;<span><img src="icons/image 1.jpg" alt="MYESHOPPING" height="30" /></span>My E-shopping</a>

                    </div>
                    <div class ="navbar-collapse collapse">
                        <ul class ="nav navbar-nav navbar-right">
                            <li class =""><a href ="WebForm1.aspx">Home</a></li>
                            <li ><a href ="#">Contact Us</a></li>
                            <li ><a href ="#">Blog</a></li>
                            <li class ="dropdown">
                                <a href ="#" class ="dropdown-toggle" data-toggle="dropdown">Products<b class ="caret"></b></a>
                                <ul class ="dropdown-menu">
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
                            <li ><a href ="Sign Up.aspx">SignUp</a></li>
                            <li ><a href ="Sign In.aspx">SignIn</a></li>
                        </ul>
                    </div>
                </div>
            </div>
           
            <!---image slider--->
                 <div class="container">
       <h2>Carousel Example</h2>  
       <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
         <ol class="carousel-indicators">
           <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
           <li data-target="#myCarousel" data-slide-to="1"></li>
           <li data-target="#myCarousel" data-slide-to="2"></li>
           <li data-target="#myCarousel" data-slide-to="3"></li>
           <li data-target="#myCarousel" data-slide-to="4"></li>
           <li data-target="#myCarousel" data-slide-to="5"></li>
           <li data-target="#myCarousel" data-slide-to="6"></li>
         </ol>

    <!-- Wrapper for slides -->
         <div class="carousel-inner">
           <div class="item active">
             <img src="image slider/pic1.jpg" alt="Tops" style="width:20%;"/>
               <div class="carousel-caption">
                <h3>Trendy Tops</h3>
                 <p><a class ="bt bt-lg bt-primary" href ="#" role ="button" > Buy Now </a></p>
             </div>
           </div>

           <div class="item">
             <img src="image slider/pic2.jpg" alt="Denim" style="width:20%;"/> 
               <div class="carousel-caption">
                <h3>Denim</h3>
                <p><a class ="bt bt-lg bt-primary" href ="#" role ="button" > Buy Now </a></p>
               </div>
           </div>

             <div class="item active">
                <img src="image slider/pic3.jpg" alt="Frocks" style="width:20%;"/> 
                 <div class="carousel-caption">
                  <h3>Western Wear For Women</h3>
                   <p><a class ="bt bt-lg bt-primary" href ="#" role ="button" > Buy Now </a></p>
                 </div>
           </div>

             <div class="item active">
             <img src="image slider/pic4.jpg" alt="Tshirts" style="width:20%;"/>
                 <div class="carousel-caption">
                  <h3>Tshirts For Men</h3>
                   <p><a class ="bt bt-lg bt-primary" href ="#" role ="button" > Buy Now </a></p>
                 </div>
           </div>

             <div class="item active">
             <img src="image slider/pic5.jpg" alt="Women Footware" style="width:20%;"/>
                 <div class="carousel-caption">
                  <h3>Women FootwARE</h3>
                   <p><a class ="bt bt-lg bt-primary" href ="#" role ="button" > Buy Now </a></p>
                 </div>
           </div>
    
           <div class="item">
             <img src="image slider/pic6.jpg" alt="Shoes" style="width:20%;"/>
               <div class="carousel-caption">
                <h3>Shoes For men</h3>
                 <p><a class ="bt bt-lg bt-primary" href ="#" role ="button" > Buy Now </a></p>
               </div>
           </div>
         </div>

    <!-- Left and right controls -->
         <a class="left carousel-control" href="#myCarousel" data-slide="prev">
           <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
         </a>
         <a class="right carousel-control" href="#myCarousel" data-slide="next">
           <span class="glyphicon glyphicon-chevron-right"></span>
           <span class="sr-only">Next</span>
         </a>
       </div>
     </div>
            <!----image slider end--->

        </div>


        <!---Middle Content--->

        <hr />
        <div class ="container center">
            <div class ="row ">
                

                <div class ="col-lg-4">
                    <img class ="img-circle " src="images/img1.jpg" alt="thumb" width="140" height="140" />
                    <h2>Peplum Tops</h2>
                    <p>Peplum tops are tops with a strip sewn onto the waist so that the bottom part of the top flows outward and has a slight flare to it. The great thing about peplum tops is that the style itself is great for both casual and formal occasions.</p>
                    <p> <a class ="btn btn-default " href ="#" role ="button"> View More &raquo;</a></p>
                </div>

                 <div class ="col-lg-4">
                    <img class ="img-circle " src="images/img3.jpg" alt="thumb" width="140" height="140" />
                    <h2>Sweaters</h2>
                    <p>Sweaters are a great breather of an outfit for the otherwise mundane everyday apparels. Sweaters can be easily included in an everyday setting without much effort. Work or vacation, a sweater can be influential. </p>
                    <p> <a class ="btn btn-default " href ="#" role ="button"> View More &raquo;</a></p>
                </div>

               
                 <div class ="col-lg-4">
                    <img class ="img-circle " src="images/img4.jpg" alt="thumb" width="140" height="140" />
                    <h2>Watches</h2>
                    <p>Watches do not just serve to remind the wearer of the time. These custom accessories also make an essential part of your outfit. A watches description takes the whole fashion meaning to a different level, thanks to their exquisite and bold looks.</p>
                    <p> <a class ="btn btn-default " href ="#" role ="button"> View More &raquo;</a></p>
                </div>

            </div>
        </div>


        <!---Middle Content End--->

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
