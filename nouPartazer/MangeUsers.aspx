<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MangeUsers.aspx.cs" Inherits="nouPartazer.Admin_Management_functions.MangeUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Manage Users</h2>
    <asp:GridView ID="gridManageUsers" runat="server" AutoGenerateColumns="False" OnRowCommand="gridManageUsers_RowCommand">
        <Columns>
            <asp:BoundField DataField="UserID" HeaderText="User ID" />
            <asp:BoundField DataField="Username" HeaderText="Username" />
            <asp:TemplateField HeaderText="Action">
                <ItemTemplate>
                    <asp:Button ID="btnFreeze" runat="server" Text="Freeze" CommandName="Freeze" CommandArgument='<%# Eval("UserID") %>' />
                    <asp:Button ID="btnUnfreeze" runat="server" Text="Unfreeze" CommandName="Unfreeze" CommandArgument='<%# Eval("UserID") %>' />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>