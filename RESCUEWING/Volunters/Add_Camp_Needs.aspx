<%@ Page Title="" Language="C#" MasterPageFile="~/Volunters/Volontiers.master" AutoEventWireup="true" CodeFile="Add_Camp_Needs.aspx.cs" Inherits="Volunters_Add_Camp_Needs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 90%;
        }
        .style2
        {
        }
        .style3
        {
            width: 277px;
        }
        .style5
    {
        width: 968px;
    }
    .style6
    {
        width: 209px;
    }
    .style7
    {
        width: 117px;
    }
    .style8
    {
        width: 138px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="heading text-uppercase text-center">Add Camp Needs</h3>
    <table class="style1">
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                Select Camp</td>
            <td align="center" class="style7">
                <asp:DropDownList ID="ddlselectcamp" class="form-control" runat="server" 
                   Width="183px" AutoPostBack="True" 
                    onselectedindexchanged="ddlselectcamp_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td align="center" class="style8">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td align="center" class="style7">
                &nbsp;</td>
            <td align="center" class="style8">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style2" colspan="2">
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table align="center" class="style1">
                        <tr>
                            <td class="style3">
                                Location</td>
                            <td>
                                <asp:Label ID="lbllocation" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                Near By</td>
                            <td>
                                <asp:Label ID="lbladdress" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td align="center" class="style8">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                Male</td>
            <td align="center" class="style7">
                <asp:TextBox ID="txtmale" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td align="center" class="style8">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                Female</td>
            <td align="center" class="style7">
                <asp:TextBox ID="txtfemale" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td align="center" class="style8">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                Others</td>
            <td align="center" class="style7">
                <asp:TextBox ID="txtothers" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td align="center" class="style8">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td align="center" class="style7">
                &nbsp;</td>
            <td align="center" class="style8">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                Total Member</td>
            <td align="center" class="style7">
                <asp:TextBox ID="txttotalmember" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td align="center" class="style8">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp; &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td align="center" class="style7">
                &nbsp;</td>
            <td align="center" class="style8">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                Add Item</td>
            <td align="center" class="style7">
                &nbsp;</td>
            <td align="center" class="style8">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                Item</td>
            <td align="center" class="style7">
                <asp:TextBox ID="txtiteam" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td align="center" class="style8">
                Quantity</td>
            <td align="center">
                <asp:TextBox ID="txtquantity" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                <asp:Button ID="butadd" class="btn btn-primary" runat="server" Text="Add" Width="87px" 
                    onclick="butadd_Click" />
            </td>
            <td align="center" class="style7">
                &nbsp;</td>
            <td align="center" class="style8">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td align="center" class="style7">
                &nbsp;</td>
            <td align="center" class="style8">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td align="center" class="style7">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="Id" >
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                        <asp:BoundField DataField="item" HeaderText="Item" >
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" >
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                        <asp:CommandField SelectText="Remove" ShowSelectButton="True" >
                        <ControlStyle CssClass="btn btn-success btn-sm" />
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:CommandField>
                    </Columns>
                </asp:GridView>
            </td>
            <td align="center" class="style8">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                <asp:Button ID="butsubmit" class="btn btn-primary" runat="server" onclick="butsubmit_Click" 
                    Text="Submit" />
            </td>
            <td align="center" class="style7">
                &nbsp;</td>
            <td align="center" class="style8">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

