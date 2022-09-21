<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditBrand.aspx.cs" Inherits="MyEshoppingWebsitee.EditBrand" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>EditBrand</title>
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
                        <label>Enter ID:</label>
                        <asp:TextBox ID="txtID"  runat="server" ></asp:TextBox>
                       
                    </div>
                    <div class="form-group">
                  
                    </div>
         </div>
         <div class="col-md-6">
         <div class="form-group">
                        <label>Enter Brand:</label>
                        <asp:TextBox ID="txtUpdateBrandName" runat="server"></asp:TextBox>
                    </div>
        
          <div class="form-group">
                        <asp:Button ID="btnUpdateBrand"  runat="server"
                            Text="UPDATE" OnClick="btnUpdateBrand_Click"   />
                    </div>
         </div>
       
         </div>
                   
                   

                   
                   
          </div>   
          <div class="col-md-6">
         
             <div class="row">
                <div class="col-md-12">
                <h4 class="alert-info text-center"> All Brands</h4>
                <br />
                 <asp:TextBox ID="txtFilterGrid1Record" style="border:2px solid blue"  runat="server" placeholder="Search Brand...." onkeyup="Search_Gridview(this)"></asp:TextBox>
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
             tblData.rows[i].style.display = styleDisplay;
         }
     } 
</script>





        </div>
    </form>
</body>
</html>
