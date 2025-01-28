<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="nouPartazer.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Contact Us</h2>
   
        <div>
            <label for="txtName">Your Name:</label>
            <asp:TextBox ID="txtName" runat="server" required="true" />
        </div>
        <div>
            <label for="txtEmail">Email:</label>
            <asp:TextBox ID="txtEmail" runat="server" required="true" />
        </div>
        <div>
            <label for="txtMessage">Message:</label>
            <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" required="true" />
        </div>
        <div>
            <asp:Button ID="btnSendMessage" Text="Send Message" runat="server" OnClick="btnSendMessage_Click" />
        </div>
    
</asp:Content>