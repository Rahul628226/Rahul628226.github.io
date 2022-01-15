<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Volunteer_Blood_Bank.aspx.cs" Inherits="Admin_Volunteer_Blood_Bank" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 74%;
        }
        .style6
        {
            width: 163px;
            font-weight: bold;
            height: 32px;
        }
        .style7
        {
            width: 116px;
            height: 32px;
        }
        .style8
        {
            width: 264px;
            height: 32px;
        }
        .style10
        {
            width: 163px;
            font-weight: bold;
        }
        .style11
        {
            width: 163px;
        }
        .style12
        {
            width: 116px;
        }
        .style13
        {
            width: 264px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<table align="center" class="w-100">
<h3 class="heading text-uppercase text-center">Blood Bank</h3>
    <tr>
        <td>
            &nbsp;</td>
        <td>
                <asp:GridView ID="GridView1" class="table table-bordered table-hover table-striped" runat="server" AutoGenerateColumns="False" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="VID" >
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FirstName" HeaderText="First Name" >
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                        <asp:BoundField DataField="LastName" HeaderText="Last Name" >
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                        <asp:BoundField DataField="BloodGroup" HeaderText="Blood Group" >
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" >
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                        <asp:BoundField DataField="LastDonateDate" HeaderText="Last Donate Date" >
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                        <asp:CommandField ShowSelectButton="True" >
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:CommandField>
                    </Columns>
                </asp:GridView>
            </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Panel ID="Panel1" runat="server" Visible="False">
                <table class="style1">
                    <tr>
                        <td class="style10">
                            VID</td>
                        <td class="style12">
                            <asp:Label ID="lblvid" runat="server"></asp:Label>
                        </td>
                        <td class="style13">
                            &nbsp;</td>
                        <td class="style13" rowspan="5">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            Full Name</td>
                        <td class="style12">
                            <asp:Label ID="lblfirstname" runat="server"></asp:Label>
                        </td>
                        <td class="style13">
                            <asp:Label ID="lbllastname" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style12">
                            <strong>First Name</strong></td>
                        <td class="style13">
                            <strong>Last Name</strong></td>
                    </tr>
                    <tr>
                        <td class="style10">
                            Date of Birth</td>
                        <td class="style12">
                            <asp:Label ID="lbldob" runat="server"></asp:Label>
                        </td>
                        <td class="style13">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            BLOOD GROUP</td>
                        <td class="style12">
                            <asp:Label ID="lblbloodgroup" runat="server"></asp:Label>
                        </td>
                        <td class="style13">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style6">
                            </td>
                        <td class="style7">
                            <asp:Label ID="lblheight" runat="server"></asp:Label>
                        </td>
                        <td class="style8">
                            <asp:Label ID="lblweight" runat="server"></asp:Label>
                        </td>
                        <td class="style8">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style12">
                            <strong>Height</strong></td>
                        <td class="style13">
                            <strong>Weight</strong></td>
                        <td class="style13">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            Last Donate Date</td>
                        <td class="style12">
                            <asp:Label ID="lbllastdonatedate" runat="server"></asp:Label>
                        </td>
                        <td class="style13">
                            &nbsp;</td>
                        <td class="style13">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            Phone Number</td>
                        <td class="style12">
                            <asp:Label ID="lblphoneno" runat="server"></asp:Label>
                        </td>
                        <td class="style13">
                            &nbsp;</td>
                        <td class="style13">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            Address</td>
                        <td class="style12">
                            <asp:Label ID="lbladdress" runat="server"></asp:Label>
                        </td>
                        <td class="style13">
                            &nbsp;</td>
                        <td class="style13">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style11">
                            &nbsp;</td>
                        <td class="style12">
                            <asp:Label ID="lbldistrict" runat="server"></asp:Label>
                        </td>
                        <td class="style13">
                            <asp:Label ID="lblpincode" runat="server"></asp:Label>
                        </td>
                        <td class="style13">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style11">
                            &nbsp;</td>
                        <td class="style12">
                            <strong>District</strong></td>
                        <td class="style13">
                            <strong>Pin Code</strong></td>
                        <td class="style13">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style11">
                            &nbsp;</td>
                        <td class="style12">
                            &nbsp;</td>
                        <td class="style13">
                            &nbsp;</td>
                        <td class="style13">
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
<br />
<br />
<br />
</asp:Content>

