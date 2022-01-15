<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Manage_Camp_Details.aspx.cs" Inherits="Admin_Manage_Camp_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style4
        {
        width: 105px;
    }
        .style5
        {
            width: 147px;
        }
        .style6
        {
            width: 224px;
        }
        .style7
    {
        width: 39px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="heading text-uppercase text-center">Manage Camp Details</h3>
    <table class="style1">
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td align="center" class="style4">
                &nbsp;</td>
            <td align="center" class="style7">
                &nbsp;</td>
            <td align="center" class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td align="center" class="style4">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    onselectedindexchanged="GridView2_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="CID" >
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                        <asp:BoundField DataField="campname" HeaderText="CampName" >
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                        <asp:BoundField DataField="campaddress" HeaderText="CampAddress" >
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                        <asp:CommandField ShowSelectButton="True" >
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:CommandField>
                    </Columns>
                </asp:GridView>
            </td>
            <td align="center" class="style7">
                &nbsp;</td>
            <td align="center" class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td align="center" class="style4">
                &nbsp;</td>
            <td align="center" class="style7">
                &nbsp;</td>
            <td align="center" class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                CID</td>
            <td align="center" class="style7">
                <asp:Label ID="lblCid" runat="server"></asp:Label>
            </td>
            <td align="center" class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                Camp Name</td>
            <td align="center" class="style7">
                <asp:Label ID="lblcampname" runat="server"></asp:Label>
            </td>
            <td align="center" class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                Camp Address</td>
            <td align="center" class="style7">
                <asp:Label ID="lblcampaddress" runat="server"></asp:Label>
            </td>
            <td align="center" class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                Near By</td>
            <td align="center" class="style7">
                <asp:Label ID="lblnearby" runat="server"></asp:Label>
            </td>
            <td align="center" class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                Camp Strength</td>
            <td align="center" class="style7">
                <asp:Label ID="lblcampstrength" runat="server"></asp:Label>
            </td>
            <td align="center" class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                Status</td>
            <td align="center" class="style7">
                <asp:Label ID="lblstatus" runat="server"></asp:Label>
            </td>
            <td align="center" class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                Volunteerid</td>
            <td align="center" class="style7">
                <asp:Label ID="lblvolunteerid" runat="server"></asp:Label>
            </td>
            <td align="center" class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td align="center" class="style4">
                <asp:Button ID="Button1" class="btn btn-danger" runat="server" onclick="Button1_Click" Text="Delete" />
            </td>
            <td align="center" class="style7">
                &nbsp;</td>
            <td align="center" class="style5">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

