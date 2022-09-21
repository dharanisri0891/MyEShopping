<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditCategory.aspx.cs" Inherits="MyEshoppingWebsitee.EditCategory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>EditCategory</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <br />
<br />
<br />
<br />
<div class="container">


<div class="row">
        

         <div class ="col-md-6">

         <div class="row">
         <div class="col-md-6">
         <div class="form-group">
                        <label>Enter Category ID:</label>
                        <asp:TextBox ID="txtID"  runat="server" ></asp:TextBox>
                       
                    </div>
                    <div class="form-group">
                  
                    </div>
         </div>
         <div class="col-md-6">
         <div class="form-group">
                        <label>Enter Category Name:</label>
                        <asp:TextBox ID="txtUpdateCatName"  runat="server"></asp:TextBox>
                    </div>
        
          <div class="form-group">
                        <asp:Button ID="btnUpdateBrand" runat="server"
                            Text="UPDATE"   />
                    </div>
         </div>
       
         </div>
                   
                   

                   
                   
          </div>   
          <div class="col-md-6">
         
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
         var tblData = document.getElementById("<%=GridView1.ClientID %>");
         var rowData;
         for (var i = 1; i < tblData.rows.length; i++) {
             rowData = tblData.rows[i].innerHTML;
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
