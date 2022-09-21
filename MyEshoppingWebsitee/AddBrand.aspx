<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBrand.aspx.cs" Inherits="MyEshoppingWebsitee.AddBrand" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AddBrand</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

             <div class ="container ">
    <br />
    <br />

            <div class ="form-horizontal ">
                <h2>Add Brand</h2>
                <hr />
                <div class ="form-group">
                    <asp:Label ID="Label1"  runat="server" Text="BrandName"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtBrand" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorBrandName" runat="server"  ErrorMessage="*plz Enter Brandname" ControlToValidate="txtBrand" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

               

                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-4 ">

                        <asp:Button ID="btnAddBrand" runat="server" Text="Add" OnClick="btnAddBrand_Click"  />
                       
                    </div>

                  
                </div>
               
             
                



               


            </div>

        <h1>Brands</h1>
        <hr />

<div class="panel panel-default">

               <div class="panel-heading"> All Brands</div>


     <asp:repeater ID="rptrBrands" runat="server">

         <HeaderTemplate>
             <table class="table">
                  <thead>
                    <tr>
                        <th>#</th>
                        <th>Brand</th>
                        <th>Edit</th>

                    </tr>

                </thead>



            <tbody>
         </HeaderTemplate>


         <ItemTemplate>
             <tr>
                    <th> <%# Eval("BrandID") %> </th>
                    <td><%# Eval("Name") %>   </td>

                    <td>Edit</td>
                </tr>
         </ItemTemplate>


         <FooterTemplate>
             </tbody>

              </table>
         </FooterTemplate>

     </asp:repeater>

             
               
        
        

  
</div>

<hr />
<%--<div class="row">
        

         <div class ="col-md-6">

         <div class="row">
         <div class="col-md-6">
         <div class="form-group">
                        <label>Enter ID:</label>
                        <asp:TextBox ID="txtID" CssClass="form-control" runat="server" AutoPostBack="true"  ontextchanged="txtID_TextChanged"></asp:TextBox>
                       
                    </div>
                    <div class="form-group">
                  
                    </div>
         </div>
         <div class="col-md-6">
         <div class="form-group">
                        <label>Enter Brand:</label>
                        <asp:TextBox ID="txtUpdateBrandName" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
        
          <div class="form-group">
                        <asp:Button ID="btnUpdateBrand" CssClass ="btn btn-primary " runat="server"
                            Text="UPDATE" onclick="btnUpdateBrand_Click"  />
                    </div>
         </div>
       
         </div>
                   
                   

                   
                   
          </div>   
          <div class="col-md-6"></div>

</div>--%>



        </div>






        </div>
    </form>
</body>
</html>
