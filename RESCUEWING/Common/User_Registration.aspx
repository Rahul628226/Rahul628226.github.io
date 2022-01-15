<%@ Page Title="" Language="C#" MasterPageFile="~/Common/Common.master" AutoEventWireup="true" CodeFile="User_Registration.aspx.cs" Inherits="Common_User_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style4
        {
            width: 94px;
        }
        .style7
        {
            width: 235px;
            height: 62px;
        }
        .style8
        {
            width: 94px;
            height: 62px;
        }
        .style11
        {
            width: 235px;
            height: 57px;
        }
        .style12
        {
            width: 94px;
            height: 57px;
        }
        .style15
        {
            width: 235px;
            height: 53px;
        }
        .style16
        {
            width: 94px;
            height: 53px;
        }
        .style23
        {
            width: 235px;
            height: 54px;
        }
        .style24
        {
            width: 94px;
            height: 54px;
        }
        .style27
        {
            width: 235px;
            height: 48px;
        }
        .style28
        {
            width: 94px;
            height: 48px;
        }
        .style31
        {
            width: 235px;
            height: 51px;
        }
        .style32
        {
            width: 94px;
            height: 51px;
        }
        .style33
        {
            width: 117px;
            height: 62px;
            text-align: left;
        }
        .style34
        {
            width: 117px;
            height: 57px;
        }
        .style35
        {
            width: 117px;
            height: 53px;
        }
        .style36
        {
            width: 117px;
        }
        .style37
        {
            width: 117px;
            height: 54px;
        }
        .style38
        {
            width: 117px;
            height: 48px;
        }
        .style39
        {
            width: 117px;
            height: 51px;
        }
        .style40
        {
            width: 117px;
            height: 84px;
        }
        .style41
        {
            width: 235px;
            height: 84px;
        }
        .style42
        {
            width: 94px;
            height: 84px;
        }
        .style43
        {
            width: 225px;
            height: 62px;
            text-align: left;
        }
        .style51
        {
            width: 235px;
        }
        .style52
        {
            width: 225px;
            height: 57px;
        }
        .style53
        {
            width: 225px;
            height: 53px;
        }
        .style54
        {
            width: 225px;
            height: 84px;
        }
        .style55
        {
            width: 225px;
            height: 54px;
        }
        .style56
        {
            width: 225px;
            height: 48px;
        }
        .style57
        {
            width: 225px;
            height: 51px;
        }
        .style58
        {
            width: 225px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="heading text-uppercase text-center">Registration</h3>
    <table class="style1" align="center">
        <tr>
            <td class="style43">
                &nbsp;</td>
            <td class="style33">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style8" align="center">
                &nbsp;</td>
            <td class="style8" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style43">
                &nbsp;</td>
            <td class="style33">
                <br />
                Name<br />
            </td>
            <td class="style7">
                <asp:TextBox ID="txtname" class="form-control" Width="250px" placeholder="Enter Name" runat="server"></asp:TextBox>
            </td>
            <td class="style8" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtname" ErrorMessage=" Enter your name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style8" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style52">
                &nbsp;</td>
            <td class="style34">
                <br />
                Gender<br />
            </td>
            <td class="style11">
                <asp:RadioButtonList ID="rdogender" class="form-control" Width="250px" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style12" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="rdogender" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style12" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style53">
                &nbsp;</td>
            <td class="style35">
                <br />
                Date Of Birth<br />
            </td>
            <td class="style15">
                <asp:TextBox ID="txtdateofbirth" class="form-control" Width="250px" placeholder="Enter DOB" runat="server"></asp:TextBox>
            </td>
            <td class="style16" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtdateofbirth" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style16" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style54">
                &nbsp;</td>
            <td class="style40">
                Address</td>
            <td class="style41">
                <asp:TextBox ID="txtaddress" class="form-control" placeholder="Enter Address" runat="server" 
                    TextMode="MultiLine" Height="58px" ontextchanged="txtaddress_TextChanged" 
                    Width="154px"></asp:TextBox>
            </td>
            <td class="style42" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtaddress" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style42" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style53">
                &nbsp;</td>
            <td class="style35">
                <br />
                Phone No<br />
            </td>
            <td class="style15">
                <asp:TextBox ID="txtphoneno" class="form-control" Width="250px" placeholder=" Enter Phone NO" runat="server"></asp:TextBox>
            </td>
            <td class="style16" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style16" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style55">
                &nbsp;</td>
            <td class="style37">
                Email<br />
            </td>
            <td class="style23">
                <asp:TextBox ID="txtemail" class="form-control" Width="250px" placeholder="Enter Email" runat="server"></asp:TextBox>
            </td>
            <td class="style24" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="style24" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style56">
                &nbsp;</td>
            <td class="style38">
                <br />
                User Name<br />
            </td>
            <td class="style27">
                <asp:TextBox ID="txtusername" class="form-control" Width="250px" placeholder="Enter User Name" runat="server"></asp:TextBox>
            </td>
            <td class="style28" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtusername" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style28" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style57">
                &nbsp;</td>
            <td class="style39">
                <br />
                Password<br />
            </td>
            <td class="style31">
                <asp:TextBox ID="txtpassword" class="form-control" Width="250px" placeholder=" Enter Password" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style32" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtpassword" ErrorMessage="Enter Password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style32" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style58">
                &nbsp;</td>
            <td class="style36">
                <br />
                Confirm Password<br />
            </td>
            <td class="style51">
                <asp:TextBox ID="txtconformpassword" class="form-control" Width="250px" placeholder="Confirm Pasword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style4" align="center">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtconformpassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtpassword" ControlToValidate="txtconformpassword" 
                    ErrorMessage="*" ForeColor="Red"></asp:CompareValidator>
            </td>
            <td class="style4" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style58">
                &nbsp;</td>
            <td class="style36">
                &nbsp;</td>
            <td class="style51">
                <asp:Button ID="Button1" class="btn btn-primary" runat="server" onclick="Button1_Click" Text="Submit" />
            </td>
            <td class="style4" align="center">
                &nbsp;</td>
            <td class="style4" align="center">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

