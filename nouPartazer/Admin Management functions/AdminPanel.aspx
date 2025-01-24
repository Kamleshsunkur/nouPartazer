<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="nouPartazer.Admin_Management_functions.AdminPanel" %><asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Admin Management</h2>

    <p>Manage and oversee the operations of the website.</p>
    <ul>
        <li><a href="ApproveNGOs.aspx">Approve NGOs</a></li>
        <li><a href="ManageItems.aspx">Manage Items</a></li>
        <li><a href="ManageUsers.aspx">Manage Users</a></li>
        <li><a href="Analytics.aspx">View Analytics</a></li>
    </ul>
    <div>
        <asp:Button ID="btnApproveNGO" Text="Approve NGOs" runat="server" OnClick="btnApproveNGO_Click" />
        <asp:Button ID="btnManageItems" Text="Manage Items" runat="server" OnClick="btnManageItems_Click" />
        <asp:Button ID="btnAnalytics" Text="View Analytics" runat="server" OnClick="btnAnalytics_Click" />
    </div>
</asp:Content>
