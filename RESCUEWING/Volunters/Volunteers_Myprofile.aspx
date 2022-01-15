<%@ Page Title="" Language="C#" MasterPageFile="~/Volunters/Volontiers.master" AutoEventWireup="true" CodeFile="Volunteers_Myprofile.aspx.cs" Inherits="Volunters_Volunteers_Myprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style9
        {
            width: 24%;
        }
        .style10
        {
            width: 11%;
        }
        .style11
        {
            width: 18%;
        }
        .style12
        {
            width: 19%;
        }
        .style13
        {
            width: 9%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="heading text-uppercase text-center">My profile</h3>
    <table class="style1">
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style12">
                <asp:Label ID="libsphoto" runat="server"></asp:Label>
            </td>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="style11">
                FirstName&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="style12" align="center">
                <asp:TextBox ID="txtfirstname" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td class="style12" align="center" rowspan="3">
                <asp:Image ID="imgphoto" class="img img-thumbnail" runat="server" 
                    Height="132px" Width="148px" />
                <asp:Label ID="ilbsphoto" runat="server"></asp:Label>
            </td>
            <td class="style9" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtfirstname" ErrorMessage=" Enter Your First Name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="style10" align="center">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="txtfirstname" ErrorMessage="Plz Enter a valid name" 
                    ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td class="style10" align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="style11">
                Last Name</td>
            <td class="style12" align="center">
                <asp:TextBox ID="txtlastname" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td class="style9" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Enter Your Last Name" ControlToValidate="txtlastname" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style10" align="center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="style10" align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                Select&nbsp; District</td>
            <td class="style12" align="center">
                <asp:DropDownList ID="ddlselectdistrict" class="form-control" Width="250px" runat="server">
                    <asp:ListItem Selected="True">Select District</asp:ListItem>
                    <asp:ListItem>Kasargod</asp:ListItem>
                    <asp:ListItem>Kannur</asp:ListItem>
                    <asp:ListItem>Kozhikode</asp:ListItem>
                    <asp:ListItem>Wayanad</asp:ListItem>
                    <asp:ListItem>Malappuram</asp:ListItem>
                    <asp:ListItem>Palakkad</asp:ListItem>
                    <asp:ListItem>Thrissur</asp:ListItem>
                    <asp:ListItem>Ernakulam</asp:ListItem>
                    <asp:ListItem>Idukki</asp:ListItem>
                    <asp:ListItem>Kottayam</asp:ListItem>
                    <asp:ListItem>Alappuzha</asp:ListItem>
                    <asp:ListItem>Pathamthitta</asp:ListItem>
                    <asp:ListItem>Kollam</asp:ListItem>
                    <asp:ListItem>Thiruvananthapuram</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style9" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="*******" 
                    ControlToValidate="ddlselectdistrict" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style10" align="center">
                &nbsp;</td>
            <td class="style10" align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                Address</td>
            <td class="style12" align="center">
                <asp:TextBox ID="txtaddress" class="form-control" runat="server" TextMode="MultiLine" Width="250px" Height="50px"></asp:TextBox>
            </td>
            <td class="style12" align="center">
                <asp:FileUpload ID="fluphoto" class="form-control" runat="server" 
                    Height="32px" Width="269px" />
            </td>
            <td class="style9" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="*******" ControlToValidate="txtaddress" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style10" align="center">
                &nbsp;</td>
            <td class="style10" align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                PinCode</td>
            <td class="style12" align="center">
                <asp:TextBox ID="txtpincode" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td class="style12" align="center">
                <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Upload" 
                    onclick="Button1_Click"/>
            </td>
            <td class="style9" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="********" ControlToValidate="txtpincode" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style10" align="center">
                &nbsp;</td>
            <td class="style10" align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                Blood Type</td>
            <td class="style12" align="center">
                <asp:DropDownList ID="ddlbloodtype" class="form-control" Width="250px" runat="server">
                    <asp:ListItem Selected="True">Select Blood Type</asp:ListItem>
                    <asp:ListItem>O positive</asp:ListItem>
                    <asp:ListItem>O negative</asp:ListItem>
                    <asp:ListItem>A positive</asp:ListItem>
                    <asp:ListItem>A negative</asp:ListItem>
                    <asp:ListItem>B positive</asp:ListItem>
                    <asp:ListItem>B negative</asp:ListItem>
                    <asp:ListItem>AB positive</asp:ListItem>
                    <asp:ListItem>AB negative</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style12" align="center">
                &nbsp;</td>
            <td class="style9" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="********" ControlToValidate="ddlbloodtype" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style10" align="center">
                &nbsp;</td>
            <td class="style10" align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                Gender</td>
            <td class="style12" align="center">
                <asp:RadioButtonList ID="rdogender" class="form-control" Width="218px" 
                    runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style12" align="center">
                &nbsp;</td>
            <td class="style9" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ErrorMessage="*******" ControlToValidate="rdogender" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style10" align="center">
                &nbsp;</td>
            <td class="style10" align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                Date Of Birth</td>
            <td class="style12" align="center">
                <asp:TextBox ID="txtdateofbirth" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td class="style12" align="center">
                &nbsp;</td>
            <td class="style9" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ErrorMessage="********" ControlToValidate="txtdateofbirth" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style10" align="center">
                &nbsp;</td>
            <td class="style10" align="center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                Email</td>
            <td class="style12" align="center">
                <asp:TextBox ID="txtemail" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td class="style12" align="center">
                &nbsp;</td>
            <td class="style9" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ErrorMessage="******" ControlToValidate="txtemail" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style10" align="center">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="enter valid email" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td class="style10" align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                Phone Number</td>
            <td class="style12" align="center">
                <asp:TextBox ID="txtp" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td class="style12" align="center">
                &nbsp;</td>
            <td class="style9" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ErrorMessage="*******" ControlToValidate="txtp" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style10" align="center">
                &nbsp;</td>
            <td class="style10" align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td align="center" class="style12">
                &nbsp;</td>
            <td align="center" class="style12">
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
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td align="center" class="style12">
                <asp:Button ID="Button3" class="btn btn-primary" runat="server" runat="server"  Text="Update" 
                    onclick="Button3_Click1" />
            </td>
            <td align="center" class="style12">
                <asp:Button ID="Button4" class="btn btn-danger" runat="server" runat="server" Text="Delete" onclick="Button4_Click" />
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
        </table>
</asp:Content>

