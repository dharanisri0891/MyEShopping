<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenDenim.aspx.cs" Inherits="MyEshoppingWebsitee.MenDenim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MenDenim</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            


<div class="container">
  <h2>Men Jeans Denim Pants</h2> 

    <div class="panel panel-primary">
      <div class="panel-heading">Jeans Denim Pants</div>
      <div class="panel-body">

      <asp:TextBox ID="txtFilterGrid1Record"  runat="server"
              placeholder="Search Products...." AutoPostBack="true" 
               ></asp:TextBox>
      <br />
      <hr />
      <asp:repeater ID="rptrProducts" runat="server">
           <ItemTemplate>
        <div class="col-sm-3 col-md-3">
            <a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration:none;">
          <div class="thumbnail">             
              <img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" alt="<%# Eval("ImageName") %>"/>
              <div class="caption">
                   <div class="probrand"><%# Eval ("BrandName") %>  </div>
                   <div class="proName"> <%# Eval ("PName") %> </div>
                   <div class="proPrice"> <span class="proOgPrice" > <%# Eval ("PPrice","{0:0,00}") %> </span> <%# Eval ("PSelPrice","{0:c}") %> <span class="proPriceDiscount"> (<%# Eval("DiscAmount","{0:0,00}") %>off) </span></div>
                  
              </div>
          </div>
                </a>
        </div>
              
               </ItemTemplate>
       </asp:repeater>
     
      </div>
      <div class="panel-footer">  </div>
    </div>
   
</div>






        </div>
    </form>
</body>
</html>
