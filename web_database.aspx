<%@ Page Language="VB" AutoEventWireup="false" CodeFile="web_database.aspx.vb" Inherits="web_database" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>購買紀錄列表</title>
</head>
<script language="javascript" type="text/javascript">

</script>
<body >


<div id="container">
    <font color="blue" style="font-family:Microsoft JhengHei;font-size:30px" >
    Hello World ! XD</font>
    <img src="yum.jpg" />
    <img src="5.gif" />
</div>
<br />
<hr />
   <form id="form1" runat="server" >
            <asp:Label ID="lbPageTitle" runat="server" Text="購買紀錄列表" Font-Bold="True" Font-Size="30px" ForeColor="#CC00CC" ></asp:Label>
            <br /><br />
            <table width="800px" class="Table_Style" runat="server" id="Table2">
                <tr>
                    <td align="left" width="50%"> 
                       日期區間 :       
                                <asp:TextBox ID="tbsdate" runat="server"  MaxLength="10" Width="80px" ></asp:TextBox>
                             ～  <asp:TextBox ID="tbedate" runat="server"  MaxLength="10" Width="80px" ></asp:TextBox>
                    </td>                    
                    <td align="left">        
                        <asp:Button ID="Button1" runat="server" Text="查詢"  Width="90px" Height="25px"  />
                    </td>
                </tr>
            </table>
            <center>
            <br />
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="false" AutoGenerateColumns="False"
                        AllowSorting="True" Style="text-align: left" CellPadding="0"
                        Width="1300px" Font-Size="9pt" >
                        <AlternatingRowStyle  />
                        <HeaderStyle  Font-Bold="False" HorizontalAlign="Left" VerticalAlign="Middle" BackColor="#009900" ForeColor="White" />
                        <PagerStyle Font-Bold="True" ForeColor="Black" Font-Names="Arial"
                            HorizontalAlign="Left" VerticalAlign="Middle" Font-Size="9pt" />
                        <RowStyle  />
                        <Columns>
                            <asp:TemplateField HeaderText="客戶名稱">
                                <ItemStyle HorizontalAlign="left" />
                                <HeaderStyle Font-Bold="False" HorizontalAlign="center" />
                                <ItemTemplate>
                                    <asp:Label ID="lbCustomer_Name" runat="server" Text='<%# Bind("Customer_Name")%>' Width="100%"></asp:Label>
                                </ItemTemplate>
                                <ControlStyle Font-Size="9pt" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="訂單編號">
                                <ItemStyle HorizontalAlign="left" />
                                <HeaderStyle Font-Bold="False" HorizontalAlign="center" />
                                <ItemTemplate>
                                    <asp:Label ID="lbOrder_ID" runat="server" Text='<%# Bind("Order_ID")%>' Width="100%"></asp:Label>
                                </ItemTemplate>
                                <ControlStyle Font-Size="9pt" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="訂單日期">
                                <ItemStyle HorizontalAlign="left" />
                                <HeaderStyle Font-Bold="False" HorizontalAlign="center" />
                                <ItemTemplate>
                                    <asp:Label ID="lbOrder_Date" runat="server" Text='<%# Bind("Order_Date")%>' Width="100%"></asp:Label>
                                </ItemTemplate>
                                <ControlStyle Font-Size="9pt" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="送貨日期">
                                <ItemStyle HorizontalAlign="left" />
                                <HeaderStyle Font-Bold="False" HorizontalAlign="center" />
                                <ItemTemplate>
                                    <asp:Label ID="lbShip_Date" runat="server" Text='<%# Bind("Ship_Date")%>' Width="100%"></asp:Label>
                                </ItemTemplate>
                                <ControlStyle Font-Size="9pt" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="運送模式">
                                <ItemStyle HorizontalAlign="left" />
                                <HeaderStyle Font-Bold="False" HorizontalAlign="center" />
                                <ItemTemplate>
                                    <asp:Label ID="lbShip_Mode" runat="server" Text='<%# Bind("Ship_Mode")%>' Width="100%"></asp:Label>
                                </ItemTemplate>
                                <ControlStyle Font-Size="9pt" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Region">
                                <ItemStyle HorizontalAlign="left" />
                                <HeaderStyle Font-Bold="False" HorizontalAlign="center" />
                                <ItemTemplate>
                                    <asp:Label ID="lbRegion_name" runat="server" Text='<%# Bind("Region_name")%>' Width="100%"></asp:Label>
                                </ItemTemplate>
                                <ControlStyle Font-Size="9pt" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="State">
                                <ItemStyle HorizontalAlign="left" />
                                <HeaderStyle Font-Bold="False" HorizontalAlign="center" />
                                <ItemTemplate>
                                    <asp:Label ID="lbState_name" runat="server" Text='<%# Bind("State_name")%>' Width="100%"></asp:Label>
                                </ItemTemplate>
                                <ControlStyle Font-Size="9pt" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Country">
                                <ItemStyle HorizontalAlign="left" />
                                <HeaderStyle Font-Bold="False" HorizontalAlign="center" />
                                <ItemTemplate>
                                    <asp:Label ID="lbCountry_name" runat="server" Text='<%# Bind("Country_name")%>' Width="100%"></asp:Label>
                                </ItemTemplate>
                                <ControlStyle Font-Size="9pt" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="City">
                                <ItemStyle HorizontalAlign="left" />
                                <HeaderStyle Font-Bold="False" HorizontalAlign="center" />
                                <ItemTemplate>
                                    <asp:Label ID="lbcity_name" runat="server" Text='<%# Bind("city_name")%>' Width="100%"></asp:Label>
                                </ItemTemplate>
                                <ControlStyle Font-Size="9pt" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="產品名稱">
                                <ItemStyle HorizontalAlign="left" />
                                <HeaderStyle Font-Bold="False" HorizontalAlign="center" />
                                <ItemTemplate>
                                    <asp:Label ID="lbProduct_Name" runat="server" Text='<%# Bind("Product_Name")%>' Width="100%"></asp:Label>
                                </ItemTemplate>
                                <ControlStyle Font-Size="9pt" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="單價">
                                <ItemStyle HorizontalAlign="right" />
                                <HeaderStyle Font-Bold="False" HorizontalAlign="center" />
                                <ItemTemplate>
                                    <asp:Label ID="lbprice" runat="server" Text='<%# Bind("price")%>' Width="100%"></asp:Label>
                                </ItemTemplate>
                                <ControlStyle Font-Size="9pt" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="數量">
                                <ItemStyle HorizontalAlign="right" />
                                <HeaderStyle Font-Bold="False" HorizontalAlign="center" />
                                <ItemTemplate>
                                    <asp:Label ID="lbQuantity" runat="server" Text='<%# Bind("Quantity")%>' Width="100%"></asp:Label>
                                </ItemTemplate>
                                <ControlStyle Font-Size="9pt" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="折扣%">
                                <ItemStyle HorizontalAlign="right" />
                                <HeaderStyle Font-Bold="False" HorizontalAlign="center" />
                                <ItemTemplate>
                                    <asp:Label ID="lbDiscount" runat="server" Text='<%# Bind("Discount")%>' Width="100%"></asp:Label>
                                </ItemTemplate>
                                <ControlStyle Font-Size="9pt" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="總價">
                                <ItemStyle HorizontalAlign="right" />
                                <HeaderStyle Font-Bold="False" HorizontalAlign="center" />
                                <ItemTemplate>
                                    <asp:Label ID="lbSales" runat="server" Text='<%# Bind("Sales")%>' Width="100%"></asp:Label>
                                </ItemTemplate>
                                <ControlStyle Font-Size="9pt" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="利潤">
                                <ItemStyle HorizontalAlign="right" />
                                <HeaderStyle Font-Bold="False" HorizontalAlign="center" />
                                <ItemTemplate>
                                    <asp:Label ID="lbprofit" runat="server" Text='<%# Bind("profit")%>' Width="100%"></asp:Label>
                                </ItemTemplate>
                                <ControlStyle Font-Size="9pt" />
                            </asp:TemplateField>

                        </Columns>
                    </asp:GridView>
                    </center>

   </form>

</body>
</html>
