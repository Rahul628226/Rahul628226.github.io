<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Usercomplaints.aspx.cs" Inherits="User_Usercomplaints" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 352px;
        }
        .style3
        {
            width: 177px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="heading text-uppercase text-center">FeedBack</h3>
    <table class="style1">
    
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <strong>&nbsp;</strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                Title</td>
            <td align="center" class="style3">
                <asp:TextBox ID="txttitle" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                Description</td>
            <td align="center" class="style3">
                <asp:TextBox ID="txtdescription" class="form-control" runat="server" Height="117px" 
                    TextMode="MultiLine" Width="180px"></asp:TextBox>
            </td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                Date</td>
            <td align="center" class="style3">
                <asp:Label ID="lbldate" runat="server"></asp:Label>
            </td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" align="center">
                &nbsp;</td>
            <td class="style2" align="center">
                &nbsp;</td>
            <td align="center" class="style3">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" align="center">
                &nbsp;</td>
            <td class="style2" align="center">
                &nbsp;</td>
            <td align="center" class="style3">
                <asp:Button ID="butsubmit" class="btn btn-primary" runat="server" onclick="butsubmit_Click" 
                    Text="Submit" />
            </td>
            <td align="center">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

