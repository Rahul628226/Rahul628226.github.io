<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Manage_User.aspx.cs" Inherits="Admin_Manage_User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style35
        {
            height: 27px;
        }
        .style44
        {
        }
        .style45
        {
            width: 172px;
            height: 27px;
        }
        .style46
    {
        height: 23px;
    }
    .style47
    {
        width: 303px;
    }
    .style48
    {
        height: 23px;
        width: 303px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="heading text-uppercase text-center">Manage User</h3>
    <table class="style1">
        <tr>
            <td class="style44" align="center" colspan="2">
                <table class="w-100">
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
                <asp:GridView ID="GridView2" class="table table-bordered table-hover table-striped" runat="server" AutoGenerateColumns="False" 
                    onselectedindexchanged="GridView2_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="UID" >
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                        <asp:BoundField DataField="name" HeaderText="Name" >
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                        <asp:BoundField DataField="address" HeaderText="Address" >
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                        <asp:BoundField DataField="phonenumber" HeaderText="Phone Number" >
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                        <asp:BoundField DataField="email" HeaderText="Email" >
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
                </table>
            </td>
        </tr>
        <tr>
            <td class="style44">
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table class="w-100">
                        <tr>
                            <td class="style47">
                                UID</td>
                            <td class="style30" align="center">
                                <asp:Label ID="lblid" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style47">
                                <br />
                                Name<br /> <br />
                            </td>
                            <td class="style33" align="center">
                                <asp:Label ID="lblname" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style47">
                                User Name</td>
                            <td class="style41" align="center">
                                <asp:Label ID="lblusername" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style47">
                                &nbsp;
                                <br />
                                Gender<br />
                                <br />
                            </td>
                            <td class="style30" align="center">
                                <asp:Label ID="lblgender" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style48">
                                <br />
                                Date Of Birth<br /> <br />
                            </td>
                            <td class="style46" align="center">
                                <asp:Label ID="lbldob" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style47">
                                <br />
                                Address<br /> </td>
                            <td class="style30" align="center">
                                <asp:Label ID="lbladdress" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style47">
                                <br />
                                Phone No<br /> <br />
                            </td>
                            <td class="style30" align="center">
                                <asp:Label ID="lblphoneno" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style47">
                                <br />
                                Email<br />
                            </td>
                            <td class="style30" align="center">
                                <asp:Label ID="lblemail" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style47" align="center">
                                <br />
                                <br />
                            </td>
                            <td class="style30" align="center">
                                <asp:Button ID="Button1" class="btn btn-danger" runat="server" 
                    onclick="Button1_Click" Text="Delete" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style45">
                &nbsp;</td>
            <td class="style35">
            </td>
        </tr>
        </table>
</asp:Content>

