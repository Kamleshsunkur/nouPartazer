<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="nouPartazer.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Page Header -->
    <div style="text-align: center; padding: 30px; background-color: #f8f9fa;">
        <h1 style="font-size: 2.5rem; color: #007BFF; margin-bottom: 10px;">Login</h1>
        <p style="font-size: 1.2rem; max-width: 800px; margin: 0 auto; color: #6c757d;">
            Welcome back! Please log in to access your account. If you don’t have an account, you can <a href="DonorRegistration.aspx" style="color: #007BFF; text-decoration: none;">register here</a>.
        </p>
    </div>

    <!-- Login Form -->
    <div style="max-width: 500px; margin: 30px auto; padding: 20px; background-color: #ffffff; border: 1px solid #e9ecef; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
        <h2 style="text-align: center; color: #007BFF; margin-bottom: 20px;">Login to Your Account</h2>
        <form style="display: flex; flex-direction: column; gap: 20px;">
            <!-- Username Field -->
            <div>
                <label for="txtUsername" style="font-size: 1.1rem;">Username:</label>
                <asp:TextBox ID="txtUsername" runat="server" placeholder="Enter your username" 
                             style="width: 100%; padding: 10px; border: 1px solid #ced4da; border-radius: 4px;" />
            </div>

            <!-- Password Field -->
            <div>
                <label for="txtPassword" style="font-size: 1.1rem;">Password:</label>
                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" placeholder="Enter your password" 
                             style="width: 100%; padding: 10px; border: 1px solid #ced4da; border-radius: 4px;" />
            </div>

            <!-- Remember Me Checkbox -->
            <div>
                <asp:CheckBox ID="chkRememberMe" runat="server" Text="Remember Me" style="margin-left: 5px;" />
            </div>

            <!-- Login Button -->
            <div style="text-align: center;">
                <asp:Button ID="btnLogin" Text="Login" runat="server" OnClick="btnLogin_Click"
                    style="background-color: #007BFF; color: white; padding: 10px 20px; border: none; border-radius: 4px; font-size: 1rem; cursor: pointer;" />
            </div>

            <!-- Error Message -->
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" style="text-align: center; display: block;" />
        </form>
    </div>
</asp:Content>