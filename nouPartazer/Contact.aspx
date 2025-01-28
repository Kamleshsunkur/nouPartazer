<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="nouPartazer.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Page Header -->
    <div style="text-align: center; padding: 30px; background-color: #f8f9fa;">
        <h1 style="font-size: 2.5rem; color: #007BFF; margin-bottom: 10px;">Contact Us</h1>
        <p style="font-size: 1.2rem; max-width: 800px; margin: 0 auto; color: #6c757d;">
            Have questions or need assistance? Reach out to us using the form below. We’re here to help you with any inquiries or feedback.
        </p>
    </div>

    <!-- Contact Form -->
    <div style="max-width: 600px; margin: 30px auto; padding: 20px; background-color: #ffffff; border: 1px solid #e9ecef; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
        <h2 style="text-align: center; color: #007BFF; margin-bottom: 20px;">Send Us a Message</h2>
        <form style="display: flex; flex-direction: column; gap: 20px;">
            <!-- Name Field -->
            <div>
                <label for="txtName" style="font-size: 1.1rem;">Your Name:</label>
                <asp:TextBox ID="txtName" runat="server" placeholder="Enter your name"
                             style="width: 100%; padding: 10px; border: 1px solid #ced4da; border-radius: 4px;" />
            </div>

            <!-- Email Field -->
            <div>
                <label for="txtEmail" style="font-size: 1.1rem;">Email:</label>
                <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter your email address"
                             style="width: 100%; padding: 10px; border: 1px solid #ced4da; border-radius: 4px;" />
            </div>

            <!-- Message Field -->
            <div>
                <label for="txtMessage" style="font-size: 1.1rem;">Message:</label>
                <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="5" placeholder="Write your message here"
                             style="width: 100%; padding: 10px; border: 1px solid #ced4da; border-radius: 4px;" />
            </div>

            <!-- Send Button -->
            <div style="text-align: center;">
                <asp:Button ID="btnSendMessage" Text="Send Message" runat="server" OnClick="btnSendMessage_Click"
                    style="background-color: #007BFF; color: white; padding: 10px 20px; border: none; border-radius: 4px; font-size: 1rem; cursor: pointer;" />
            </div>

            <!-- Success Message -->
            <asp:Label ID="lblSuccessMessage" runat="server" ForeColor="Green" Visible="false" 
                       style="text-align: center; display: block; margin-top: 20px;" />
        </form>
    </div>
     

    
</asp:Content>
    
   