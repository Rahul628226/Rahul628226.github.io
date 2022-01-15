<%@ Page Title="" Language="C#" MasterPageFile="~/Volunteer/volunteerMaster.master" AutoEventWireup="true" CodeFile="volunteer_bloodbank.aspx.cs" Inherits="Volunteer_volunteer_bloodbank" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="heading text-uppercase text-center">Blood Bank</h3>
    <table class="style1">
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style7">
                Full Name</td>
            <td class="style5" align="center">
                <asp:TextBox ID="txtFirstName" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td class="style2" align="center">
                <asp:TextBox ID="txtlastname" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td align="center" class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtFirstName" ErrorMessage="Enter Your Full Name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5" align="center">
                <strong>First Name</strong></td>
            <td class="style2" align="center">
                <strong>Last Name</strong></td>
            <td align="center" class="style6">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style7">
                Date of Birth</td>
            <td class="style5" align="center">
                <asp:TextBox ID="txtdob" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td class="style2" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="ddlbloodgroup" ErrorMessage=" Enter Date Of Birth" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td align="center" class="style6">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style7">
                BLOOD GROUP</td>
            <td class="style5" align="center">
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
            <td class="style2" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="ddlbloodgroup" ErrorMessage=" Enter Your Blood Type" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td align="center" class="style6">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5" align="center">
                &nbsp;</td>
            <td class="style2" align="center">
                <strong>Height</strong></td>
            <td align="center" class="style6">
                <asp:TextBox ID="txtheight" class="form-control" Width="100px" runat="server"></asp:TextBox>
            </td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5" align="center">
                &nbsp;</td>
            <td class="style2" align="center">
                <strong>Weight</strong></td>
            <td align="center" class="style6">
                <asp:TextBox ID="txtweight" class="form-control" Width="100px" runat="server"></asp:TextBox>
            </td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style7">
                Last Donate Date</td>
            <td class="style5" align="center">
                <asp:TextBox ID="txtlastdonatedate" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td class="style2" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtlastdonatedate" 
                    ErrorMessage=" Enter Your Last Donate Date" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td align="center" class="style6">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style7">
                Phone Number</td>
            <td class="style5" align="center">
                <asp:TextBox ID="txtphonenumber" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td class="style2" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtphonenumber" ErrorMessage="Enter your Phone No" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td align="center" class="style6">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style7">
                Address</td>
            <td class="style5" align="center">
                <asp:TextBox ID="txtaddress" class="form-control" Width="250px" Height="50px" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="style2" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtaddress" ErrorMessage=" Enter Your Address" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td align="center" class="style6">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10" align="center">
                &nbsp;</td>
            <td class="style4" align="center">
                &nbsp;</td>
            <td class="style5" align="center">
                <asp:TextBox ID="txtdistrict" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td class="style2" align="center">
                <asp:TextBox ID="txtpincode" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td align="center" class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtdistrict" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10" align="center">
                &nbsp;</td>
            <td class="style4" align="center">
                &nbsp;</td>
            <td class="style5" align="center">
                <strong>District</strong></td>
            <td class="style2" align="center">
                <strong>Pin Code</strong></td>
            <td align="center" class="style6">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10" align="center">
                &nbsp;</td>
            <td class="style4" align="center">
                &nbsp;</td>
            <td class="style5" align="center">
                &nbsp;</td>
            <td class="style2" align="center">
                &nbsp;</td>
            <td align="center" class="style6">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10" align="center">
                &nbsp;</td>
            <td class="style4" align="center">
                &nbsp;</td>
            <td class="style5" align="center">
                <asp:Button ID="Button1" class="btn btn-primary" runat="server" onclick="Button1_Click" Text="Submit" />
            </td>
            <td class="style2" align="center">
                &nbsp;</td>
            <td align="center" class="style6">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
    </table>
<p>
</p>
</asp:Content>

