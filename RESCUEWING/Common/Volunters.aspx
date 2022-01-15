<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Common.master" AutoEventWireup="true" CodeFile="Volunters.aspx.cs" Inherits="Common_User_Registeration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style7
        {
            width: 18%;
            text-align: left;
        }
        .style8
        {
            width: 26%;
            text-align: left;
        }
        .style9
        {
            width: 24%;
        }
        .style10
        {
            width: 13%;
        }
        .style11
        {
            width: 28%;
            text-align: left;
        }
        .style12
    {
        width: 28%;
        text-align: left;
        height: 41px;
    }
    .style13
    {
        width: 18%;
        text-align: left;
        height: 41px;
    }
    .style14
    {
        width: 26%;
        text-align: left;
        height: 41px;
    }
    .style15
    {
        width: 24%;
        height: 41px;
    }
    .style16
    {
        width: 13%;
        height: 41px;
    }
    .style17
    {
        width: 28%;
        text-align: left;
        height: 55px;
    }
    .style18
    {
        width: 18%;
        text-align: left;
        height: 55px;
    }
    .style19
    {
        width: 26%;
        text-align: left;
        height: 55px;
    }
    .style20
    {
        width: 24%;
        height: 55px;
    }
    .style21
    {
        width: 13%;
        height: 55px;
    }
        .style22
        {
            width: 28%;
            text-align: left;
            height: 38px;
        }
        .style23
        {
            width: 18%;
            text-align: left;
            height: 38px;
        }
        .style24
        {
            width: 26%;
            text-align: left;
            height: 38px;
        }
        .style25
        {
            width: 24%;
            height: 38px;
        }
        .style26
        {
            width: 13%;
            height: 38px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="heading text-uppercase text-center">Registration</h3>
    <table class="style1">
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                First Name</td>
            <td class="style8">
                <asp:TextBox ID="txtfirstname" class="form-control" Width="250px" placeholder="Enter First Name" runat="server"></asp:TextBox>
            </td>
            <td class="style9" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtfirstname" ErrorMessage="Enter Your First Name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style10" align="center">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="txtfirstname" ErrorMessage=" Enter a valid name" 
                    ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                Last Name</td>
            <td class="style8">
                <asp:TextBox ID="txtlastname" class="form-control" Width="250px" placeholder="Enter LastName" runat="server"></asp:TextBox>
            </td>
            <td class="style9" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Enter Your Last Name" ControlToValidate="txtlastname" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style10" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                Aadhar No</td>
            <td class="style8">
                <asp:TextBox ID="txtadhar" class="form-control" Width="250px" placeholder="Enter Adhar NO"  runat="server"></asp:TextBox>
            </td>
            <td class="style9" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ErrorMessage="Enter Your Aadhar Number" ControlToValidate="txtadhar" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style10" align="center">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtadhar" ErrorMessage="Enter Valid Aadhar NO" ForeColor="Red" 
                    ValidationExpression="^\d{12}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                Verify ID</td>
            <td class="style8">
                <asp:FileUpload ID="fluverifyid" Width="250px" runat="server" />
            </td>
            <td class="style9" align="center">
                <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="UPLOAD" CausesValidation="False" 
                    onclick="Button2_Click" />
            </td>
            <td class="style10" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                
                &nbsp;</td>
            <td class="style7">
                
            </td>
            <td class="style8">
                <asp:Image ID="imgid" runat="server" Height="107px" Width="127px" />
            </td>
            <td class="style9" align="center">
                &nbsp;</td>
            <td class="style10" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                
                &nbsp;</td>
            <td class="style7">
                
                &nbsp;</td>
            <td class="style8">
                <asp:Label ID="libsid" runat="server"></asp:Label>
            </td>
            <td class="style9" align="center">
                &nbsp;</td>
            <td class="style10" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                Select District<br />
            </td>
            <td class="style8">
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
                    ErrorMessage="*" 
                    ControlToValidate="ddlselectdistrict" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style10" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                Address<br />
            </td>
            <td class="style8">
                <asp:TextBox ID="txtaddress" class="form-control" placeholder="Enter Address" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="style9" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtaddress" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style10" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                PinCode</td>
            <td class="style8">
                <asp:TextBox ID="txtpincode" class="form-control" Width="250px" placeholder="Enter Pincode" runat="server"></asp:TextBox>
            </td>
            <td class="style9" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtpincode" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style10" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style9" align="center">
                &nbsp;</td>
            <td class="style10" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                Blood Type</td>
            <td class="style8">
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
            <td class="style9" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="*" ControlToValidate="ddlbloodtype" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style10" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style9" align="center">
                &nbsp;</td>
            <td class="style10" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                Gender</td>
            <td class="style8">
                <asp:RadioButtonList ID="rdogender"  Width="250px" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style9" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ErrorMessage="*" ControlToValidate="rdogender" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style10" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style9" align="center">
                &nbsp;</td>
            <td class="style10" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                Date Of Birth</td>
            <td class="style8">
                <asp:TextBox ID="txtdateofbirth" class="form-control" Width="250px" placeholder="Enter DOB" runat="server"></asp:TextBox>
            </td>
            <td class="style9" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtdateofbirth" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style10" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                </td>
            <td class="style23">
                Email</td>
            <td class="style24">
                <asp:TextBox ID="txtemail" class="form-control" Width="250px" placeholder="Enter Email" runat="server"></asp:TextBox>
            </td>
            <td class="style25" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtemail" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style26" align="center">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Enter Valid Email" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                Phone Number</td>
            <td class="style8">
                <asp:TextBox ID="txtphonenumber" class="form-control" Width="250px" placeholder="Enter Phone NO" runat="server"></asp:TextBox>
            </td>
            <td class="style9" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ErrorMessage="*" ControlToValidate="txtphonenumber" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style10" align="center">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtphonenumber" ErrorMessage="Enter Valid Number" 
                    ForeColor="Red" ValidationExpression="^\d{10,12}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style17">
                </td>
            <td class="style18">
                Upload Photo<br />
            </td>
            <td class="style19">
                <asp:FileUpload ID="fluphoto" Width="300px" runat="server" Height="22px" />
            </td>
            <td class="style20" align="center">
                <asp:Button ID="Button1" class="btn btn-primary" runat="server" onclick="Button1_Click" Text="Upload" 
                    CausesValidation="False" />
            </td>
            <td class="style21" align="center">
                </td>
        </tr>
        <tr>
            <td class="style12">
                </td>
            <td class="style13">
                </td>
            <td class="style14">
                <asp:Label ID="libsphoto" runat="server"></asp:Label>
            </td>
            <td class="style15" align="center">
                </td>
            <td class="style16" align="center">
                </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                <asp:Image ID="imgphoto" runat="server" Height="132px" Width="132px" />
            </td>
            <td class="style9" align="center">
                &nbsp;</td>
            <td class="style10" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                <asp:Label ID="ilbsphoto" runat="server"></asp:Label>
            </td>
            <td class="style9" align="center">
                &nbsp;</td>
            <td class="style10" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                Password</td>
            <td class="style8">
                <asp:TextBox ID="txtpassword" class="form-control" Width="250px" placeholder="Enter Password" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style9" align="center">
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="txtpassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                
            </td>
            <td class="style10" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                Confirm Password</td>
            <td class="style8">
                <asp:TextBox ID="txtconformpassword" placeholder="Confirm Password" class="form-control" Width="250px" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style9" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ErrorMessage="*" 
                    ControlToValidate="txtconformpassword" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style10" align="center">
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtpassword" ControlToValidate="txtconformpassword" 
                    ErrorMessage="Password Mismatch" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                <asp:Button ID="butsubmit" class="btn btn-primary" runat="server" onclick="butsubmit_Click" 
                    Text="REGISTER" />
            </td>
            <td class="style9" align="center">
                &nbsp;</td>
            <td class="style10" align="center">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

