<%@ Page Title="" Language="C#" MasterPageFile="~/Volunters/Volontiers.master" AutoEventWireup="true" CodeFile="Manage_Collection_Center.aspx.cs" Inherits="Volunters_Manage_Collection_Center" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 126px;
        }
        .style3
        {
            width: 266px;
        }
        .style6
        {
            width: 274px;
        }
        .style7
        {
            width: 165px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="heading text-uppercase text-center">Manage Collection Center</h3>
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style7">
                <asp:GridView ID="GridView1" class="table table-bordered table-hover table-striped" runat="server" AutoGenerateColumns="False" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" Width="522px">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="Collection Center ID" >
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Cid" HeaderText="Camp ID" >
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                        <asp:BoundField DataField="collectioncentername" 
                            HeaderText="Collection Center Name" >
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                        <asp:BoundField DataField="collectioncenteraddress" 
                            HeaderText="Center Address" >
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                        <asp:CommandField ShowSelectButton="True" >
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:CommandField>
                    </Columns>
                </asp:GridView>
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style7">
                <asp:Panel ID="Panel1" runat="server" Visible="False" Width="641px">
                    <table class="w-100">
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style6">
                                &nbsp;</td>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style6">
                                CCID</td>
                            <td class="style3">
                                <asp:Label ID="lblccid" runat="server"></asp:Label>
                            </td>
                            <td class="style3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style6">
                                CMPID</td>
                            <td class="style3">
                                <asp:Label ID="lblcid" runat="server"></asp:Label>
                            </td>
                            <td class="style3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style6">
                                Collection Center Name</td>
                            <td class="style3">
                                <asp:TextBox ID="txtccname" class="form-control" Width="250px" runat="server"></asp:TextBox>
                            </td>
                            <td class="style3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style6">
                                Center Address</td>
                            <td class="style3">
                                <asp:TextBox ID="txtcaddress" class="form-control" Width="250px" runat="server"></asp:TextBox>
                            </td>
                            <td class="style3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style6">
                                Near By</td>
                            <td class="style3">
                                <asp:TextBox ID="txtnearby" class="form-control" Width="250px" runat="server"></asp:TextBox>
                            </td>
                            <td class="style3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style6">
                                Contact No</td>
                            <td class="style3">
                                <asp:TextBox ID="txtcontactno" class="form-control" Width="250px" runat="server"></asp:TextBox>
                            </td>
                            <td class="style3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style6">
                                &nbsp;</td>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style6">
                                &nbsp;</td>
                            <td class="style3">
                                <asp:Button ID="butupdate" class="btn btn-primary" runat="server" onclick="butupdate_Click" 
                                    Text="Update" />
                            </td>
                            <td class="style3">
                                <asp:Button ID="butdelete" class="btn btn-danger" runat="server" onclick="butdelete_Click" 
                                    Text="Delete" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

