<%@ Page Title="" Language="C#" MasterPageFile="~/Volunters/Volontiers.master" AutoEventWireup="true" CodeFile="Add_Camp_Details.aspx.cs" Inherits="Volunters_CampMangement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 187px;
        }
        .style3
        {
            width: 153px;
        }
        .style4
        {
            width: 188px;
        }
    .style5
    {
        width: 153px;
        text-align: left;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="heading text-uppercase text-center">Add Camp Details</h3>
<p class="heading text-uppercase text-center">&nbsp;</p>
    <table class="style1">
        <tr>
            <td class="style5" align="center">
                Camp Name</td>
            <td class="style2" align="center">
                <asp:TextBox ID="txtcampname" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td class="style4" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtcampname" ErrorMessage="****" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5" align="center">
                Camp Address</td>
            <td class="style2" align="center">
                <asp:TextBox ID="txtcampaddress" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td class="style4" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtcampaddress" ErrorMessage="*****" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5" align="center">
                Near By</td>
            <td class="style2" align="center">
                <asp:TextBox ID="txtnearby" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td class="style4" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" align="center">
                Camp Strength</td>
            <td class="style2" align="center">
                <asp:TextBox ID="txtcampstrength" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td class="style4" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" align="center">
                Status</td>
            <td class="style2" align="center">
                <asp:DropDownList ID="ddlstatus" class="form-control" Width="250px" runat="server">
                    <asp:ListItem>Close</asp:ListItem>
                    <asp:ListItem>Open</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style4" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" align="center">
                &nbsp;</td>
            <td class="style2" align="center">
                <asp:Button ID="Button1" class="btn btn-primary" runat="server" onclick="Button1_Click" Text="Submit" />
            </td>
            <td class="style4" align="center">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

