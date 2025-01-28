<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DonorProfile.aspx.cs" Inherits="nouPartazer.user_registration_MF.DonorProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Update Profile</h2>
   
        <label for="txtUsername">Username:</label>
        <asp:TextBox ID="txtUsername" runat="server" Enabled="false" />
        <div>
            <label for="txtEmail">Email:</label>
            <asp:TextBox ID="txtEmail" runat="server" />
        </div>
        <div>
            <label for="txtPassword">New Password:</label>
            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" />
        </div>
        <div>
            <asp:Button ID="btnUpdate" Text="Update" runat="server" OnClick="btnUpdate_Click" />
        </div>
   
</asp:Content>