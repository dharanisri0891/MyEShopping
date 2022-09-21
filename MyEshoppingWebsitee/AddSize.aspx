<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddSize.aspx.cs" Inherits="MyEshoppingWebsitee.AddSize" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AddSize</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div class ="container ">
            <div class ="form-horizontal ">
                <br />
                <br />

                <h2>Add Size</h2>
                <hr />

                <div class ="form-group">
                    <asp:Label ID="Label1"  runat="server" Text="Size Name"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtSize" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorSize" runat="server" CssClass ="text-danger " ErrorMessage="*plz Enter Size" ControlToValidate="txtSize" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                 <div class ="form-group">
                    <asp:Label ID="Label3" runat="server" Text="Brand"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:DropDownList ID="ddlBrand"  runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorddlBrand" runat="server" CssClass ="text-danger " ErrorMessage="*plz Enter Main CategoryID" ControlToValidate="ddlBrand" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                 <div class ="form-group">
                    <asp:Label ID="Label4"  runat="server" Text="Category"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:DropDownList ID="ddlCategory" runat="server"  AutoPostBack="true"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCategory" runat="server" CssClass ="text-danger " ErrorMessage="*plz Enter  Category" ControlToValidate="ddlCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
               

                 <div class ="form-group">
                    <div class ="col-md-3 ">

                    </div>
                </div>

                 <div class ="form-group">
                    <div class ="col-md-3 ">

                    </div>
                </div>

               
               


                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnAddSize" CssClass ="btn btn-success " runat="server" Text="Add Size" OnClick="btnAddSize_Click"   />
                       
                    </div>
                </div>
               

            </div>

<h1>Size</h1>
        <hr />

<div class="panel panel-default">

               <div class="panel-heading"> All Sizes</div>


     <asp:repeater ID="rptrSize" runat="server">

         <HeaderTemplate>
             <table class="table table-hover">
                  <thead>
                    <tr>
                        <th>#</th>
                        <th>Size</th>
                        <th>Brand</th>
                        <th>Category</th>
                         <th>Sub Category</th>
                         <th>Gender</th>
                       

                    </tr>

                </thead>



            <tbody>
         </HeaderTemplate>


         <ItemTemplate>
             <tr>
                    <th> <%# Eval("SizeID") %> </th>
                    <td><%# Eval("SizeName") %>   </td>
                  <td><%# Eval("Name") %>   </td>
                  <td><%# Eval("CatName") %>   </td>
                   <td><%# Eval("SubCatName") %>   </td>
                   <td><%# Eval("GenderName") %>   </td>
                   
                </tr>
         </ItemTemplate>


         <FooterTemplate>
             </tbody>

              </table>
         </FooterTemplate>

     </asp:repeater>

             
               
           

  
</div>


        </div>



        </div>
    </form>
</body>
</html>
