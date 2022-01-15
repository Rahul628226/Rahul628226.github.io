<%@ Page Title="" Language="C#" MasterPageFile="~/Volunters/Volontiers.master" AutoEventWireup="true" CodeFile="View_userdonated_item.aspx.cs" Inherits="Volunters_View_userdonated_item" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="heading text-uppercase text-center">User Donated Item</h3>
    <table class="style1">
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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
            <td>
                
                <asp:GridView ID="GridView1" class="table table-bordered table-hover table-striped" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="Donate ID" >
                        <ControlStyle CssClass="bg-primary" ForeColor="White" />
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Cid" HeaderText="Camp ID" >
                        <ControlStyle CssClass="bg-primary" ForeColor="White" />
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ccid" HeaderText="Collection Center ID" >
                        <ControlStyle CssClass="bg-primary" ForeColor="White" />
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                        <asp:BoundField DataField="userid" HeaderText="User ID" >
                        <ControlStyle CssClass="bg-primary" ForeColor="White" />
                        <HeaderStyle CssClass="bg-primary" ForeColor="White" />
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;
                </td>
        </tr>
    </table>
</asp:Content>

