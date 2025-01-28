<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="nouPartazer.Admin_Management_functions.AdminPanel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Page Header -->
    <div style="text-align: center; padding: 30px; background-color: #f8f9fa;">
        <h1 style="font-size: 2.5rem; color: #007BFF; margin-bottom: 10px;">Admin Management</h1>
        <p style="font-size: 1.2rem; max-width: 800px; margin: 0 auto; color: #6c757d;">
            Welcome to the Admin Management Panel. Oversee the operations of the platform, including approving NGOs, managing users and items, and monitoring website analytics. Use the options below to navigate to the relevant sections.
        </p>
    </div>

    <!-- Admin Actions -->
    <div style="max-width: 800px; margin: 30px auto; padding: 20px; background-color: #ffffff; border: 1px solid #e9ecef; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
        <h2 style="text-align: center; color: #007BFF; margin-bottom: 20px;">Admin Actions</h2>
        <ul style="list-style: none; padding: 0; font-size: 1.1rem; margin-bottom: 30px;">
            <li style="margin-bottom: 15px;">
                <a href="ApproveNGOs.aspx" style="color: #007BFF; text-decoration: none; font-weight: bold;">Approve NGOs</a>
                <p style="margin: 5px 0; color: #6c757d;">Review and approve pending NGO registrations to grant them access to the platform.</p>
            </li>
            <li style="margin-bottom: 15px;">
                <a href="EditItem.aspx" style="color: #007BFF; text-decoration: none; font-weight: bold;">Manage Items</a>
                <p style="margin: 5px 0; color: #6c757d;">Oversee and manage donated items, ensuring the platform remains organized and transparent.</p>
            </li>
            <li style="margin-bottom: 15px;">
                <a href="MangeUsers.aspx" style="color: #007BFF; text-decoration: none; font-weight: bold;">Manage Users</a>
                <p style="margin: 5px 0; color: #6c757d;">Handle user accounts, including donors and NGOs, to maintain a secure and effective platform.</p>
            </li>
            <li style="margin-bottom: 15px;">
                <a href="Analytics.aspx" style="color: #007BFF; text-decoration: none; font-weight: bold;">View Analytics</a>
                <p style="margin: 5px 0; color: #6c757d;">Monitor platform analytics to assess performance, activity, and growth trends.</p>
            </li>
        </ul>

        <!-- Quick Action Buttons -->
        <div style="display: flex; justify-content: space-around; flex-wrap: wrap; gap: 20px;">
            <asp:Button ID="btnApproveNGO" Text="Approve NGOs" runat="server" OnClick="btnApproveNGO_Click"
                style="background-color: #007BFF; color: white; padding: 10px 20px; border: none; border-radius: 4px; font-size: 1rem; cursor: pointer;" />
            <asp:Button ID="btnManageItems" Text="Manage Items" runat="server" OnClick="btnManageItems_Click"
                style="background-color: #007BFF; color: white; padding: 10px 20px; border: none; border-radius: 4px; font-size: 1rem; cursor: pointer;" />
            <asp:Button ID="btnAnalytics" Text="View Analytics" runat="server" OnClick="btnAnalytics_Click"
                style="background-color: #007BFF; color: white; padding: 10px 20px; border: none; border-radius: 4px; font-size: 1rem; cursor: pointer;" />
        </div>
    </div>
</asp:Content>
