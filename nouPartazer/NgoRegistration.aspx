<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NgoRegistration.aspx.cs" Inherits="nouPartazer.NgoRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Page Header -->
    <div style="text-align: center; padding: 30px; background-color: #f8f9fa;">
        <h1 style="font-size: 2.5rem; color: #007BFF; margin-bottom: 10px;">Register as an NGO</h1>
        <p style="font-size: 1.2rem; max-width: 800px; margin: 0 auto; color: #6c757d;">
            Join nouPartazer and connect with generous donors who are eager to support your initiatives. By registering as an NGO, you can request essential items, manage donations, and make a greater impact in your community. Together, let’s create a better tomorrow.
        </p>
    </div>

    <!-- Registration Form -->
    <div style="max-width: 600px; margin: 30px auto; padding: 20px; background-color: #ffffff; border: 1px solid #e9ecef; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
        <h2 style="text-align: center; color: #007BFF; margin-bottom: 20px;">Create Your NGO Account</h2>
        <form style="display: flex; flex-direction: column; gap: 20px;">
            <!-- NGO Name Field -->
            <div style="display: flex; flex-direction: column;">
                <label for="txtNgoName" style="font-size: 1.1rem; margin-bottom: 5px;">NGO Name:</label>
                <asp:TextBox ID="txtNgoName" runat="server" placeholder="Enter your NGO's name" style="padding: 10px; border: 1px solid #ced4da; border-radius: 4px; width: 100%;" />
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