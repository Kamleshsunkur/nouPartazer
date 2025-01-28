<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MangeUsers.aspx.cs" Inherits="nouPartazer.Admin_Management_functions.MangeUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Page Header -->
    <div style="text-align: center; padding: 30px; background-color: #f8f9fa;">
        <h1 style="font-size: 2.5rem; color: #007BFF;">Manage Users</h1>
        <p style="font-size: 1.2rem; max-width: 800px; margin: 0 auto; color: #6c757d;">
            Administer user accounts by freezing or unfreezing accounts as needed. Use this interface to ensure compliance and proper platform usage.
        </p>
    </div>

    <!-- Users Management Table -->
    <div style="max-width: 800px; margin: 30px auto; padding: 20px; background-color: #ffffff; border: 1px solid #e9ecef; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
        <h2 style="text-align: center; color: #007BFF;">User Accounts</h2>
        <asp:GridView ID="gridManageUsers" runat="server" AutoGenerateColumns="False" CssClass="table" OnRowCommand="gridManageUsers_RowCommand"
            Style="margin: 0 auto; width: 100%; border-collapse: collapse; text-align: center;">
            <Columns>
                <asp:BoundField DataField="UserID" HeaderText="User ID" />
                <asp:BoundField DataField="Username" HeaderText="Username" />
                <asp:BoundField DataField="Status" HeaderText="Status" />
                <asp:TemplateField HeaderText="Actions">
                    <ItemTemplate>
                        <asp:Button ID="btnFreeze" runat="server" Text="Freeze" CommandName="Freeze" CommandArgument='<%# Eval("UserID") %>'
                            style="background-color: #dc3545; color: white; border: none; padding: 5px 10px; border-radius: 4px; cursor: pointer;" />
                        <asp:Button ID="btnUnfreeze" runat="server" Text="Unfreeze" CommandName="Unfreeze" CommandArgument='<%# Eval("UserID") %>'
                            style="background-color: #28a745; color: white; border: none; padding: 5px 10px; border-radius: 4px; cursor: pointer;" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>