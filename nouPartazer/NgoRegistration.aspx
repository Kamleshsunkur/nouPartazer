<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NgoRegistration.aspx.cs" Inherits="nouPartazer.NgoRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Register as NGO</h2>
    
        <div>
            <label for="txtNgoName">NGO Name:</label>
            <asp:TextBox ID="txtNgoName" runat="server" Required="true" />
        </div>
        <div>
            <label for="txtEmail">Email:</label>
            <asp:TextBox ID="txtEmail" runat="server" Required="true" />
        </div>
        <div>
            <label for="txtPassword">Password:</label>
            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" Required="true" />
        </div>
        <div>
            <asp:Button ID="btnRegister" Text="Register" runat="server" OnClick="btnRegister_Click" />
        </div>
   
</asp:Content>