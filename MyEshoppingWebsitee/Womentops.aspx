﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Womentops.aspx.cs" Inherits="MyEshoppingWebsitee.Womentops" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Womentops</title>
    <link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.0/css/jquery.dataTables.css" /> 
        <script type="text/javascript" charset="utf8" src="//code.jquery.com/jquery-1.10.2.min.js"></script> 
        <script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.0/js/jquery.dataTables.js"></script>

    <link href="css/Custome.css" rel="stylesheet" type="text/css" />


</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
  <h2>Women Tops</h2> 

    <div class="panel panel-primary">
      <div class="panel-heading">Tops</div>
      <div class="panel-body">
      <asp:repeater ID="rptrProducts" runat="server">
           <ItemTemplate>
        <div class="col-sm-3 col-md-3">
            <a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration:none;">
          <div class="thumbnail">             
              <img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" alt="<%# Eval("ImageName") %>"/>
              <div class="caption">
                   <div class="probrand"><%# Eval ("BrandName") %>  </div>
                   <div class="proName"> <%# Eval ("PName") %> </div>
                   <div class="proPrice"> <span class="proOgPrice" > <%# Eval ("PPrice","{0:0,00}") %> </span> <%# Eval ("PSelPrice","{0:c}") %> <span class="proPriceDiscount"> (<%# Eval("DiscAmount","{0:0,00}") %> off) </span></div>
                  
              </div>
          </div>
                </a>
        </div>
              
               </ItemTemplate>
       </asp:repeater>
     
      </div>
      <div class="panel-footer">
      </div>
    </div>
   
</div>



        </div>
    </form>
</body>
</html>
