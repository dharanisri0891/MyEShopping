<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditSubCategory.aspx.cs" Inherits="MyEshoppingWebsitee.EditSubCategory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>EditSubCategory</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

             <div class=" container">
<br />
                 <br />
                 <br />
                 <br />
                 <br />
                 <br />
<div class="well-sm"><h3 class="alert-danger text-center">Edit Sub Category</h3></div>
    <div class="row">
        <div class="col-md-8">
           <div class="row">
               <div class="col-md-3">
               <div class="form-group">
               <label>Enter SubCatID:</label>
                  <asp:TextBox ID="txtID"  runat="server" AutoPostBack="true"  ></asp:TextBox>
               </div>
                 
                  <div class="form-group">
                      <asp:Button ID="btnUpdateSubCategory"  runat="server"
                          Text="UPDATE"  />
                  </div>
               </div>
               <div class="col-md-3">
                <label>Select Category:</label>
                   <asp:DropDownList ID="ddlMainCategory"  runat="server">
                   </asp:DropDownList>
               </div>
               <div class="col-md-3">
               <label>Sub Category:</label>
                   <asp:TextBox ID="txtSubCategory"  runat="server"></asp:TextBox>
               </div>
          
           </div>
       
        </div>
        <div class="col-md-4">
        <div class="row">
                <div class="col-md-12">
                <h4 class="alert-info text-center"> All Category</h4>
                <br />
                 <asp:TextBox ID="txtFilterGrid1Record" style="border:2px solid blue"  runat="server" placeholder="Search Category...." onkeyup="Search_Gridview(this)"></asp:TextBox>
                <hr />
                   <div class="table table-responsive">
                       <asp:GridView ID="GridView1"  runat="server" EmptyDataText="Record not found...">
                       </asp:GridView>
                   </div>
                </div>
             </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    function Search_Gridview(strKey) {
        var strData = strKey.value.toLowerCase().split(" ");
        var Data = document.getElementById("<%=GridView1.ClientID %>");
        var rowData;
        for (var i = 1; i < Data.rows.length; i++) {
            rowData = Data.rows[i].innerHTML;
            var styleDisplay = 'none';
            for (var j = 0; j < strData.length; j++) {
                if (rowData.toLowerCase().indexOf(strData[j]) >= 0)
                    styleDisplay = '';
                else {
                    styleDisplay = 'none';
                    break;
                }
            }
            Data.rows[i].style.display = styleDisplay;
        }
    } 
</script>






        </div>
    </form>
</body>
</html>
