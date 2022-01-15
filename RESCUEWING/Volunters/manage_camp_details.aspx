<%@ Page Title="" Language="C#" MasterPageFile="~/Volunters/Volontiers.master" AutoEventWireup="true" CodeFile="manage_camp_details.aspx.cs" Inherits="Volunters_manage_camp_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
    .style1
    {
        text-align: left;
        width: 106px;
    }
    .style2
    {
        width: 106px;
    }
    .style3
    {
        text-align: left;
        width: 103px;
    }
    .style4
    {
        width: 103px;
    }
    .style5
    {
        text-align: left;
        width: 167px;
    }
    .style6
    {
        width: 167px;
    }
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="heading text-uppercase text-center">Manage Camp Details</h3>
    <table class="style1">
        <tr>
            <td align="center">
                &nbsp;</td>
            <td align="center">
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
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
            <td align="center">
                <asp:GridView ID="GridView1" 
                    class="table table-bordered table-hover table-striped" runat="server" AutoGenerateColumns="False" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" Width="722px">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="ID" >
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                        <asp:BoundField DataField="campname" HeaderText="Campname" >
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                        <asp:BoundField DataField="campaddress" HeaderText="Campaddress" >
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                        <asp:BoundField DataField="status" HeaderText="status" >
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                        <asp:CommandField ShowSelectButton="True" >
                        <ControlStyle CssClass="btn btn-success btn-sm" />
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:CommandField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td align="center">
                &nbsp;</td>
            <td align="center">
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
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
            <td align="center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
            <td align="center">
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table align="center">
                        <tr>
                            <td class="style5">
                                Id</td>
                            <td class="text-left">
                                &nbsp;</td>
                            <td class="text-left">
                                <asp:Label ID="lblid" runat="server"></asp:Label>
                            </td>
                            <td class="style4">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style5">
                                Camp Name</td>
                            <td class="text-left">
                                &nbsp;</td>
                            <td class="text-left">
                                <asp:TextBox ID="txtcampname" runat="server"></asp:TextBox>
                            </td>
                            <td class="style4">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtcampname" ErrorMessage="****" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style5">
                                Camp Address</td>
                            <td class="text-left">
                                &nbsp;</td>
                            <td class="text-left">
                                <asp:TextBox ID="txtcampaddress" runat="server"></asp:TextBox>
                            </td>
                            <td class="style4">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style5">
                                Nearby</td>
                            <td class="text-left">
                                &nbsp;</td>
                            <td class="text-left">
                                <asp:TextBox ID="txtnearby" runat="server"></asp:TextBox>
                            </td>
                            <td class="style4">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style5">
                                Camp Strength</td>
                            <td class="text-left">
                                &nbsp;</td>
                            <td class="text-left">
                                <asp:TextBox ID="txtcampstrength" runat="server"></asp:TextBox>
                            </td>
                            <td class="style4">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style5">
                                Status</td>
                            <td class="text-left">
                                &nbsp;</td>
                            <td class="text-left">
                                <asp:DropDownList ID="ddlstatus" runat="server" class="form-control" 
                                    Width="250px">
                                    <asp:ListItem>Close</asp:ListItem>
                                    <asp:ListItem>Open</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                Volunteer ID</td>
                            <td class="text-left">
                                &nbsp;</td>
                            <td class="text-left">
                                <asp:Label ID="lblvolunteerid" runat="server"></asp:Label>
                            </td>
                            <td class="style4">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                            <td class="style2">
                                &nbsp;</td>
                            <td class="text-left">
                                <asp:Label ID="lblmsg" runat="server"></asp:Label>
                            </td>
                            <td class="style4">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                <asp:Button ID="Button1" runat="server" class="btn btn-primary" 
                                    onclick="Button1_Click" Text="Update" />
                            </td>
                            <td class="style2">
                                &nbsp;</td>
                            <td class="style3">
                                <asp:Button ID="Button2" runat="server" class="btn btn-danger" 
                                    onclick="Button2_Click" Text="Delete" />
                            </td>
                            <td class="style4">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
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
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

