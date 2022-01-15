<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="UserBloodBank.aspx.cs" Inherits="User_UserBloodBank" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 212px;
        }
        .style4
        {
            width: 205px;
        }
        .style5
        {
            width: 135px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" align="center">
    <h3 class="heading text-uppercase text-center">Blood Bank</h3>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Full Name</td>
            <td class="style5">
                <asp:TextBox ID="txtFirstName" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:TextBox ID="txtlastname" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtFirstName" ErrorMessage="Enter Your Full Name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                First Name</td>
            <td class="style2">
                Last Name</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Date of Birth</td>
            <td class="style5">
                <asp:TextBox ID="txtdob" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="ddlbloodgroup" ErrorMessage="Enter Date Of Birth" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                BLOOD GROUP</td>
            <td class="style5">
                <asp:DropDownList ID="ddlbloodgroup" class="form-control" Width="250px" runat="server">
                    <asp:ListItem>A Positive</asp:ListItem>
                    <asp:ListItem>A Negative</asp:ListItem>
                    <asp:ListItem>B Positive</asp:ListItem>
                    <asp:ListItem>B Negative</asp:ListItem>
                    <asp:ListItem>AB Positive</asp:ListItem>
                    <asp:ListItem>AB Negative</asp:ListItem>
                    <asp:ListItem>O Positive</asp:ListItem>
                    <asp:ListItem>O Negative</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="ddlbloodgroup" ErrorMessage="Enter Your Blood Type" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                Height</td>
            <td>
                <asp:TextBox ID="txtheight" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                Weight</td>
            <td>
                <asp:TextBox ID="txtweight" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Last Donate Date</td>
            <td class="style5">
                <asp:TextBox ID="txtlastdonatedate" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtlastdonatedate" 
                    ErrorMessage="Enter Your Last Donate Date" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Phone Number</td>
            <td class="style5">
                <asp:TextBox ID="txtphonenumber" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtphonenumber" ErrorMessage="Enter your Phone No" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Address</td>
            <td class="style5">
                <asp:TextBox ID="txtaddress" class="form-control" Width="250px" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtaddress" ErrorMessage="Enter Your Address" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                <asp:TextBox ID="txtdistrict" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:TextBox ID="txtpincode" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtdistrict" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                District</td>
            <td class="style2">
                Pin Code</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                <asp:Button ID="Button1" class="btn btn-primary" runat="server" onclick="Button1_Click" Text="Submit" />
            </td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

