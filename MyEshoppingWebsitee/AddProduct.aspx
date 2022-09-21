<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="MyEshoppingWebsitee.AddProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AddProduct</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div class ="container">
       <div class ="form-horizontal">
          
           <br />
           <br />
           <h2>Add Product</h2>
           <hr />

           <div class ="form-group">
               <asp:Label ID="Label1" runat="server" CssClass ="col-md-2 control-label" Text="Proudct Name"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="txtProductName" CssClass ="form-control" runat="server"></asp:TextBox>


               </div>
           </div>

           <div class ="form-group">
               <asp:Label ID="Label2" runat="server" CssClass ="col-md-2 control-label" Text="Price"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="txtPrice" CssClass ="form-control" runat="server"></asp:TextBox>
               </div>
           </div>


           <div class ="form-group">
               <asp:Label ID="Label3" runat="server" CssClass ="col-md-2 control-label" Text="SellingPrice"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="txtsellPrice" CssClass ="form-control" runat="server"></asp:TextBox>
               </div>
           </div>


           <div class ="form-group">
               <asp:Label ID="Label4" runat="server" CssClass ="col-md-2 control-label" Text="Brand"></asp:Label>
               <div class ="col-md-3">
                   <asp:DropDownList ID="ddlBrand" CssClass ="form-control" runat="server"></asp:DropDownList>
               </div>
           </div>



           <div class ="form-group">
               <asp:Label ID="Label5" runat="server" CssClass ="col-md-2 control-label" Text="Category"></asp:Label>
               <div class ="col-md-3">
                   <asp:DropDownList ID="ddlCategory"   runat="server" ></asp:DropDownList>
               </div>
           </div>


           <div class ="form-group">
               <asp:Label ID="Label6" runat="server" CssClass ="col-md-2 control-label" Text="SubCategory"></asp:Label>
               <div class ="col-md-3">
                   <asp:DropDownList ID="ddlSubCategory"  runat="server" ></asp:DropDownList>
               </div>
           </div>

           <div class ="form-group">
               <asp:Label ID="Label19" runat="server" CssClass ="col-md-2 control-label" Text="Gender"></asp:Label>
               <div class ="col-md-3">
                   <asp:DropDownList ID="ddlGender"  runat="server" ></asp:DropDownList>
               </div>
           </div>

            <div class ="form-group">
               <asp:Label ID="Label7" runat="server" CssClass ="col-md-2 control-label" Text="Size"></asp:Label>
               <div class ="col-md-3">
                   <asp:CheckBoxList ID="cblSize"    runat="server"></asp:CheckBoxList>
               </div>
           </div>

           <div class ="form-group">
               <asp:Label ID="Label20" runat="server" CssClass ="col-md-2 control-label" Text="Quantity"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="txtQuantity"  runat="server"></asp:TextBox>
               </div>
           </div>

            <div class ="form-group">
               <asp:Label ID="Label8" runat="server" CssClass ="col-md-2 control-label" Text="Description"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="txtDescription" TextMode ="MultiLine"   runat="server"></asp:TextBox>
               </div>
           </div>


            <div class ="form-group">
               <asp:Label ID="Label9" runat="server" CssClass ="col-md-2 control-label" Text="Product Details"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="txtPDetail" TextMode ="MultiLine"  runat="server"></asp:TextBox>
               </div>
           </div>

          
            <div class ="form-group">
               <asp:Label ID="Label10" runat="server" CssClass ="col-md-2 control-label" Text="Materials and Care"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="txtMatCare" TextMode ="MultiLine"  runat="server"></asp:TextBox>
               </div>
           </div>

            <div class ="form-group">
               <asp:Label ID="Label11" runat="server" CssClass ="col-md-2 control-label" Text="Upload Image"></asp:Label>
               <div class ="col-md-3">
                   <asp:FileUpload ID="fuImg01"  runat="server" />
               </div>
           </div>

           <div class ="form-group">
               <asp:Label ID="Label12" runat="server" CssClass ="col-md-2 control-label" Text="Upload Image"></asp:Label>
               <div class ="col-md-3">
                   <asp:FileUpload ID="fuImg02"  runat="server" />
               </div>
           </div>

           <div class ="form-group">
               <asp:Label ID="Label13" runat="server" CssClass ="col-md-2 control-label" Text="Upload Image"></asp:Label>
               <div class ="col-md-3">
                   <asp:FileUpload ID="fuImg03"  runat="server" />
               </div>
           </div>

           <div class ="form-group">
               <asp:Label ID="Label14" runat="server"  Text="Upload Image"></asp:Label>
               <div class ="col-md-3">
                   <asp:FileUpload ID="fuImg04"  runat="server" />
               </div>
           </div>



            <div class ="form-group">
               <asp:Label ID="Label15" runat="server"  Text="Upload Image"></asp:Label>
               <div class ="col-md-3">
                   <asp:FileUpload ID="fuImg05" CssClass ="form-control" runat="server" />
               </div>
           </div>

            <div class ="form-group">
               <asp:Label ID="Label16" runat="server"  Text="Free Delivery"></asp:Label>
               <div class ="col-md-3">
                   <asp:CheckBox ID="chFD" runat="server" />
               </div>
           </div>


            <div class ="form-group">
               <asp:Label ID="Label17" runat="server"  Text="30 Days Return"></asp:Label>
               <div class ="col-md-3">
                   <asp:CheckBox ID="ch30Ret" runat="server" />
               </div>
           </div>


            <div class ="form-group">
               <asp:Label ID="Label18" runat="server"  Text="COD"></asp:Label>
               <div class ="col-md-3">
                   <asp:CheckBox ID="cbCOD" runat="server" />
               </div>
           </div>


           <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnAdd" CssClass ="btn btn-success " runat="server" Text="ADD Product" OnClick="btnAdd_Click"  />
                       
                    </div>
                </div>

       </div>

    </div>

    <div class="container">
  
   <hr />
    <div class="panel panel-primary">
      <div class="panel-heading"><h2>Product Report</h2> </div>
      <div class="panel-body">
           <div class="col-md-12">
              <div class="form-group">
                <div class="table table-responsive">
                    <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="false">
                    <Columns> 
                        <asp:BoundField DataField="PID" HeaderText="S.No." /> 
                        <asp:BoundField DataField="PName" HeaderText="PName" /> 
                        <asp:BoundField DataField="PPrice" HeaderText="Price" /> 
                        <asp:BoundField DataField="PSelPrice" HeaderText="SellPrice" /> 
                        <asp:BoundField DataField="Brand" HeaderText="Brand" /> 
                        <asp:BoundField DataField="CatName" HeaderText="Category" /> 
                        <asp:BoundField DataField="SubCatName" HeaderText="SubCategory" />

                        <asp:BoundField DataField="gender" HeaderText="gender" /> 
                        <asp:BoundField DataField="SizeName" HeaderText="SizeName" /> 
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                       
                        <asp:TemplateField HeaderText="Photo"> 
                    <ItemTemplate> 
                        <%-- <img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" alt="<%# Eval("ImageName") %>" style=" height:150px; width:150px;"/> --%>
                    </ItemTemplate> 
                </asp:TemplateField>

                       <%-- <asp:CommandField ShowEditButton="true" /> 
                        <asp:CommandField ShowDeleteButton="true" />--%>
                       
                         </Columns>
                    </asp:GridView>
                </div>
             
              </div>
          
           </div>
     
     
      </div>
      <div class="panel-footer">Panel Footer</div>
    </div>
   
</div>





        </div>
    </form>
</body>
</html>
