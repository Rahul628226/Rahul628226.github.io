<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="User_Blood_Bank.aspx.cs" Inherits="Admin_User_Blood_Bank" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style4
        {
            width: 224px;
            font-weight: bold;
        }
        .style2
        {
            width: 196px;
        }
        .style3
        {
            width: 224px;
        }
    .style5
    {
        width: 126px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="heading text-uppercase text-center">Blood Bank</h3>
<p class="heading text-uppercase text-center">&nbsp;</p>
    <table class="style1">
        <tr>
            <td colspan="3">
                <table class="w-100">
                    <tr>
                        <td class="style5">
                            &nbsp;</td>
            <td colspan="2">
                <asp:GridView ID="GridView1" class="table table-bordered table-hover table-striped" runat="server" AutoGenerateColumns="False" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="UID" >
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
                        <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" >
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
                        <td class="style5">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Panel ID="Panel1" runat="server" Visible="False" Width="662px">
                    <table class="w-100">
                        <tr>
                            <td class="style4" bgcolor="White" style="color: #FF0000">
                                UID</td>
                            <td class="style2">
                                <asp:Label ID="lblvid" runat="server"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4" bgcolor="White" style="color: #FF0000">
                                Full Name</td>
                            <td class="style2">
                                <asp:Label ID="lblfirstname" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lbllastname" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td class="style2">
                                <strong style="color: #FF0000">First Name</strong></td>
                            <td>
                                <strong style="color: #FF0000">Last Name</strong></td>
                        </tr>
                        <tr>
                            <td class="style4" bgcolor="White" style="color: #FF0000">
                                Date of Birth</td>
                            <td class="style2">
                                <asp:Label ID="lbldob" runat="server"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4" bgcolor="White" style="color: #FF0000">
                                BLOOD GROUP</td>
                            <td class="style2">
                                <asp:Label ID="lblbloodgroup" runat="server"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td class="style2">
                                <asp:Label ID="lblheight" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblweight" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td class="style2">
                                <strong style="color: #FF0000">Height</strong></td>
                            <td>
                                <strong style="color: #FF0000">Weight</strong></td>
                        </tr>
                        <tr>
                            <td class="style4" style="color: #FF0000">
                                Last Donate Date</td>
                            <td class="style2">
                                <asp:Label ID="lbllastdonatedate" runat="server"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4" style="color: #FF0000">
                                Phone Number</td>
                            <td class="style2">
                                <asp:Label ID="lblphoneno" runat="server"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4" style="color: #FF0000">
                                Address</td>
                            <td class="style2">
                                <asp:Label ID="lbladdress" runat="server"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style2">
                                <asp:Label ID="lbldistrict" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblpincode" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style2">
                                <strong style="color: #FF0000">District</strong></td>
                            <td>
                                <strong style="color: #FF0000">Pin Code</strong></td>
                        </tr>
                    </table>
                </asp:Panel>
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

