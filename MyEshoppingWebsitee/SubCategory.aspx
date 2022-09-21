<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SubCategory.aspx.cs" Inherits="MyEshoppingWebsitee.SubCategory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SubCategory</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div class ="container ">
            <div class ="form-horizontal ">
                <br />
                <br />

                <h2>Add SubCategory</h2>
                <hr />

                 <div class ="form-group">
                    <asp:Label ID="Label2"  runat="server" Text="Main CategoryID"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:DropDownList ID="ddlMainCatID"  runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorMainCatID" runat="server"  ErrorMessage="Please Enter Main CategoryID" ControlToValidate="ddlMainCatID" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>


                <div class ="form-group">
                    <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="SubCategory Name"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtSubCategory" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtSubCategoryName" runat="server"  ErrorMessage="Please Enter SubCategory" ControlToValidate="txtSubCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
               


                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnAddSubCategory"  runat="server" Text="Add SubCategory" OnClick="btnAddSubCategory_Click"     />
                       
                    </div>
                </div>
               

            </div>

         <h1>Sub Categories</h1>
        <hr />

<div class="panel panel-default">

               <div class="panel-heading"> All Sub Categories</div>


     <asp:repeater ID="rptrSubCat" runat="server">

         <HeaderTemplate>
             <table class="table">
                  <thead>
                    <tr>
                        <th>#</th>
                        <th>Sub-Category</th>
                        <th>Main Category</th>
                        <th>Edit</th>

                    </tr>

                </thead>



            <tbody>
         </HeaderTemplate>


         <ItemTemplate>
             <tr>
                    <th> <%# Eval("SubCatID") %> </th>
                    <td><%# Eval("SubCatName") %>   </td>
                 <td><%# Eval("CatName") %>   </td>

                    <td>Edit</td>
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
