<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="nouPartazer.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Login</h2>
   
        <div>
            <label for="txtUsername">Username:</label>
            <asp:TextBox ID="txtUsername" runat="server" required="true" />
        </div>
        <div>
            <label for="txtPassword">Password:</label>
            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" required="true" />
        </div>
        <div>
            <asp:CheckBox ID="chkRememberMe" runat="server" Text="Remember Me" />
        </div>
        <div>
            <asp:Button ID="btnLogin" Text="Login" runat="server" OnClick="btnLogin_Click" />
        </div>
        <asp:Label ID="lblMessage" runat="server" ForeColor="Red" />
   
</asp:Content>