<%@ Page Title="" Language="C#" MasterPageFile="~/Volunters/Volontiers.master" AutoEventWireup="true" CodeFile="Add_Collection_Center.aspx.cs" Inherits="Volunters_Add_Collection_Center" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 153px;
        }
        .style2
        {
            width: 187px;
        }
        .style8
        {
            width: 188px;
        }
        .style9
        {
            width: 184px;
        }
        .style10
        {
            width: 294px;
        }
        .style11
        {
            width: 289px;
        }
        .style12
        {
            width: 332px;
        }
        .style13
        {
            width: 170px;
        }
        .style14
        {
            width: 311px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <h3 class="heading text-uppercase text-center">Add Collection Center</h3>
        <p class="heading text-uppercase text-center">&nbsp;</p>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style8">
                Select Camp</td>
            <td align="center">
                <asp:DropDownList ID="ddlselectcamp" class="form-control" runat="server" 
                   Width="183px" AutoPostBack="True" 
                    onselectedindexchanged="ddlselectcamp_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
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
                                <asp:Label ID="lblcontact" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
    <table class="style1">
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style9">
                Collection Center Name</td>
            <td align="center" class="style10">
                <asp:TextBox ID="txtcentername" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td align="center" class="style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtcentername" ErrorMessage="****" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td align="center" class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style9">
                Address</td>
            <td align="center" class="style10">
                <asp:TextBox ID="txtcenteraddress" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td align="center" class="style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtcenteraddress" ErrorMessage="*****" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td align="center" class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style9">
                Near By</td>
            <td align="center" class="style10">
                <asp:TextBox ID="txtnearby" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td align="center" class="style12">
                &nbsp;</td>
            <td align="center" class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style9">
                Contact Number</td>
            <td align="center" class="style10">
                <asp:TextBox ID="txtcontactno" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td align="center" class="style12">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtcontactno" ErrorMessage="****" ForeColor="Red" 
                    ValidationExpression="^\d{10,12}$"></asp:RegularExpressionValidator>
            </td>
            <td align="center" class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style14">
                &nbsp;</td>
            <td align="center" class="style9">
                &nbsp;</td>
            <td align="center" class="style10">
                <asp:Button ID="Button1" class="btn btn-primary" runat="server" runat="server" onclick="Button1_Click" Text="Submit" />
            </td>
            <td align="center" class="style12">
                &nbsp;</td>
            <td align="center" class="style11">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

