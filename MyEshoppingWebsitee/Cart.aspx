<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="MyEshoppingWebsitee.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cart</title>
    <style type="text/css">
        .auto-style1 {
            height: 99px;
        }
        .auto-style2 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

             <br />
    <br />
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="container">
                <br />
                <br />
                    <button id="btnCart2" runat="server"  type="button">
                        Cart <span id="CartBadge" runat="server" class="badge">0</span>
                    </button>
                    <div style="padding-top: 50px">
                        <div class="col-md-9">
                            <div id="divQtyError" runat="server" class="alert alert-success alert-dismissible fade in h4">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2" style="color: rgb(0, 0, 0); font-family: consolas, monaco, &quot;andale mono&quot;, &quot;ubuntu mono&quot;, monospace; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(253, 253, 253); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Quantity cannot be less than 1.</span></div>
                            <h4 class="proNameViewCart" runat="server" id="h4NoItems"></h4>
                            <asp:Repeater ID="RptrCartProducts"  runat="server" OnItemCommand="RptrCartProducts_ItemCommand">
                                <ItemTemplate>
                                    <%--Show cart details start--%>
                                    <div class="media" style="border: 1px solid black;">
                                        <div class="media-left">
                                            <a href="ProductView.aspx?PID=<%# Eval("PID") %>" target="_blank">
                                                <img class="media-object"  src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("Name") %><%# Eval("Extention") %>" alt="<%# Eval("Name") %>" onerror="this.src='Images/NoImg.png'" />
                                            </a>
                                        </div>
                                        <div class="media-body">
                                            <h4 class="media-heading proNameViewCart"><%# Eval("PName") %></h4>
                                            <span class="ProPriceViewCart">Rs.  <%# Eval("PSelPrice","{0:0.00}") %></span>
                                            <span class="proOgPriceView">Rs.  <%# Eval("PPrice","{0:0.00}") %></span>

                                            <span class="proPriceDiscountView"> Off Rs.<%# string.Format("{0}",Convert.ToInt64(Eval("PPrice"))-Convert.ToInt64(Eval("PSelPrice"))) %></span><div class="pull-right form-inline">
                                                <asp:Label ID="lblQty" runat="server" Text="Qty:" Font-Size="Large"></asp:Label>
                                                <asp:Button ID="BtnMinus" CommandArgument='<%# Eval("PID") %>' CommandName="DoMinus" Font-Size="Large" runat="server" Text="-" /> 
                                    <asp:TextBox ID="txtQty" runat="server" Width="40" Font-Size="Large" TextMode="SingleLine" Style="text-align: center" Text='<%# Eval("Qty") %>'></asp:TextBox> 
                                     <asp:Button ID="BtnPlus" CommandArgument='<%# Eval("PID") %>' CommandName="DoPlus" runat="server" Text="+" Font-Size="Large" />                                             
                                            </div>
                                            <br />
                                            <p>
                                                <asp:Button CommandArgument='<%#Eval("CartID") %>' CommandName="RemoveThisCart" ID="btnRemoveCart" CssClass="RemoveButton1" runat="server" Text="Remove" />
                                                <br />
                                                <span class="proNameViewCart pull-right">SubTotal: Rs.  <%# Eval("SubSAmount","{0:0.00}") %></span>
                                            </p>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                            <%--Show cart details Ending--%>
                        </div>

                        <div class="col-md-3" runat="server" id="divAmountSect">
                            <div>
                                <h5 class=" proNameViewCart">Price Details</h5>
                                <div>
                                    <label class=" ">Total</label>
                                    <span class="pull-right priceGray" runat="server" id="spanCartTotal"></span>
                                </div>
                                <div>
                                    <label class=" ">Cart Discount</label>
                                    <span class="pull-right priceGreen" runat="server" id="spanDiscount"></span>
                                </div>
                            </div>
                            <div>
                                <div class="cartTotal">
                                    <label>Cart Total</label>
                                    <span class="pull-right " runat="server" id="spanTotal"></span>
                                    <div>
                                        <asp:Button ID="btnBuyNow"  runat="server"  Text="BUY NOW" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>



        </div>
    </form>
</body>
</html>
