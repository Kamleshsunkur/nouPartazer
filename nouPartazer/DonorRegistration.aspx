<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DonorRegistration.aspx.cs" Inherits="nouPartazer.DonorRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Page Header -->
    <div style="text-align: center; padding: 30px; background-color: #f8f9fa;">
        <h1 style="font-size: 2.5rem; color: #007BFF; margin-bottom: 10px;">Register as a Donor</h1>
        <p style="font-size: 1.2rem; max-width: 800px; margin: 0 auto; color: #6c757d;">
            Join nouPartazer and make a meaningful difference in the lives of others. By registering as a donor, you can contribute items, resources, or assistance to those in need. Your generosity could be the reason someone gets a fresh start. Let's share and make a positive impact together.
        </p>
    </div>

    <!-- Registration Form -->
    <div style="max-width: 600px; margin: 30px auto; padding: 20px; background-color: #ffffff; border: 1px solid #e9ecef; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
        <h2 style="text-align: center; color: #007BFF; margin-bottom: 20px;">Create Your Donor Account</h2>
        <form style="display: flex; flex-direction: column; gap: 20px;">
            <!-- Username Field -->
            <div style="display: flex; flex-direction: column;">
                <label for="txtUsername" style="font-size: 1.1rem; margin-bottom: 5px;">Username:</label>
                <asp:TextBox ID="txtUsername" runat="server" placeholder="Enter your username" style="padding: 10px; border: 1px solid #ced4da; border-radius: 4px; width: 100%;" />
            </div>

            <!-- Email Field -->
            <div style="display: flex; flex-direction: column;">
                <label for="txtEmail" style="font-size: 1.1rem; margin-bottom: 5px;">Email:</label>
                <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter your email address" style="padding: 10px; border: 1px solid #ced4da; border-radius: 4px; width: 100%;" />
            </div>

            <!-- Password Field -->
            <div style="display: flex; flex-direction: column;">
                <label for="txtPassword" style="font-size: 1.1rem; margin-bottom: 5px;">Password:</label>
                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" placeholder="Create a secure password" style="padding: 10px; border: 1px solid #ced4da; border-radius: 4px; width: 100%;" />
            </div>

            <!-- Register Button -->
            <div style="text-align: center; margin-top: 20px;">
                <asp:Button ID="btnRegister" Text="Register" runat="server" OnClick="btnRegister_Click"
                    style="background-color: #007BFF; color: white; padding: 10px 20px; border: none; border-radius: 4px; font-size: 1rem; cursor: pointer;" />
            </div>
        </form>
    </div>

    <!-- Call to Action -->
    <div style="text-align: center; margin-top: 20px; padding: 20px;">
        <p style="font-size: 1rem; color: #6c757d;">
            Already have an account? <a href="Login.aspx" style="color: #007BFF; text-decoration: none;">Login here</a>.
        </p>
    </div>
</asp:Content>