<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ManageVoluntier.aspx.cs" Inherits="Admin_ManageVoluntier" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 205px;
        }
        .style3
        {
            width: 352px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="heading text-uppercase text-center">Manage Volunteers</h3>
    <table class="style1">
        <tr>
            <td align="center">
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
                <asp:GridView ID="GridView1" class="table table-bordered table-hover table-striped" runat="server" AutoGenerateColumns="False" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="VID" >
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" >
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                        <asp:BoundField DataField="LastName" HeaderText="LastName" >
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                        <asp:BoundField DataField="adhar" HeaderText="Adhar" >
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                        <asp:BoundField DataField="address" HeaderText="Address" >
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                        <asp:BoundField DataField="district" HeaderText="Dirstrict" >
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
        </table>
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table class="w-100">
                        <tr>
                            <td class="style2">
                                VID</td>
                            <td align="center" class="style3">
                                <asp:Label ID="lblid" runat="server"></asp:Label>
                            </td>
                            <td align="center" rowspan="5">
                                <asp:Image ID="imgphoto" runat="server" class="img img-thumbnail" 
                                    Height="132px" Width="132px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                First Name</td>
                            <td class="style3" align="center">
                                <asp:Label ID="lblfirstname" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                Last Name</td>
                            <td class="style3" align="center">
                                <asp:Label ID="lblLastName" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                Aadhar No</td>
                            <td class="style3" align="center">
                                <asp:Label ID="lbladhar" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                Verify ID</td>
                            <td class="style3" align="center">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                            </td>
                            <td class="style3" align="center">
                                <asp:Image ID="imgid" class="img img-thumbnail" runat="server" Height="107px" 
                    Width="127px" />
                            </td>
                            <td align="center" class="style8">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                &nbsp;</td>
                            <td class="style3" align="center">
                                <asp:Label ID="libsid" runat="server"></asp:Label>
                            </td>
                            <td align="center" class="style8">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                Select District</td>
                            <td class="style3" align="center">
                                <asp:Label ID="lbldistrict" runat="server"></asp:Label>
                            </td>
                            <td align="center" class="style8">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                Address</td>
                            <td class="style3" align="center">
                                <asp:Label ID="lbladdress" runat="server"></asp:Label>
                            </td>
                            <td align="center" class="style8">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                PinCode</td>
                            <td class="style3" align="center">
                                <asp:Label ID="lblpincode" runat="server"></asp:Label>
                            </td>
                            <td align="center" class="style8">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                Blood Type</td>
                            <td class="style3" align="center">
                                <asp:Label ID="lblbloodtype" runat="server"></asp:Label>
                            </td>
                            <td align="center" class="style8">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                Gender</td>
                            <td class="style3" align="center">
                                <asp:Label ID="lblgender" runat="server"></asp:Label>
                            </td>
                            <td align="center" class="style8">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                Date Of Birth</td>
                            <td class="style3" align="center">
                                <asp:Label ID="lbldateofbirth" runat="server"></asp:Label>
                            </td>
                            <td align="center" class="style8">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                Email</td>
                            <td class="style3" align="center">
                                <asp:Label ID="lblEmail" runat="server"></asp:Label>
                            </td>
                            <td align="center" class="style8">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                Phone Number</td>
                            <td class="style3" align="center">
                                <asp:Label ID="lblphonenumber" runat="server"></asp:Label>
                            </td>
                            <td align="center" class="style8">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                &nbsp;</td>
                            <td class="style3" align="center">
                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Delete" 
                                    CssClass="danger" ForeColor="Red" />
                            </td>
                            <td align="center" class="style8">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                &nbsp;</td>
                            <td class="style3">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

