<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="DonateNeeds.aspx.cs" Inherits="User_DonateNeeds" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 74px;
        }
        .style3
        {
            width: 115px;
        }
        .style4
        {
            width: 86px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <h3 class="heading text-uppercase text-center">Donates Needs</h3>
        <table class="style1">
            <tr>
            <td class="style2">
                Add Item</td>
            <td align="center">
                &nbsp;</td>
            <td class="style2" align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            </tr>
            <tr>
            <td class="style2">
                Item</td>
            <td align="center">
                <asp:TextBox ID="txtiteam" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td class="style2" align="center">
                Description</td>
            <td align="center">
                <asp:TextBox ID="txtdescription" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            </tr>
            <tr>
            <td class="style2">
                <asp:Button ID="butadd" class="btn btn-primary" runat="server" Text="Add" Width="87px" 
                    onclick="butadd_Click" />
            </td>
            <td align="center">
                &nbsp;</td>
            <td class="style2" align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
                <td class="style2" align="center">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td align="center">
                    <asp:GridView ID="GridView1" class="table table-bordered table-hover table-striped" runat="server" AutoGenerateColumns="False" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged1" 
                        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                        CellPadding="4" CellSpacing="2" ForeColor="Black">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="DONID" >
                            <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                            </asp:BoundField>
                            <asp:BoundField DataField="item" HeaderText="Item" >
                            <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                            </asp:BoundField>
                            <asp:BoundField DataField="description" HeaderText="Description" >
                            <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                            </asp:BoundField>
                            <asp:CommandField SelectText="Remove" ShowSelectButton="True" >
                            <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                            </asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </td>
                <td class="style2" align="center">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    Collection Center</td>
                <td align="center">
                    <asp:DropDownList ID="ddlselectcenter" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="ddlselectcenter_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td class="style2" align="center">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
                <td class="style2" align="center">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td align="center">
                    <asp:Panel ID="Panel1" runat="server" Visible="False">
                        <table class="style1">
                            <tr>
                                <td class="style4">
                                    Address</td>
                                <td class="style3">
                                    <asp:Label ID="lbladdress" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style4">
                                    Near By</td>
                                <td class="style3">
                                    <asp:Label ID="lblnearby" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style4">
                                    Contact Number</td>
                                <td class="style3">
                                    <asp:Label ID="lblcontact" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td class="style2" align="center">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="butsubmit" class="btn btn-primary" runat="server" onclick="butsubmit_Click" 
                        Text="Submit" />
                </td>
                <td align="center">
                    &nbsp;</td>
                <td class="style2" align="center">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>

