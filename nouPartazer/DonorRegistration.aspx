<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DonorRegistration.aspx.cs" Inherits="nouPartazer.DonorRegistration" %>
<%@ Page Title="Register as Donor" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Register as Donor</h2>
        <div>
            <label for="txtUsername">Username:</label>
            <asp:TextBox ID="txtUsername" runat="server" />
            <asp:RequiredFieldValidator ControlToValidate="txtUsername" ErrorMessage="Username is required" runat="server" />
        </div>
        <div>
            <label for="txtEmail">Email:</label>
            <asp:TextBox ID="txtEmail" runat="server" />
            <asp:RequiredFieldValidator ControlToValidate="txtEmail" ErrorMessage="Email is required" runat="server" />
        </div>
        <div>
            <label for="txtPassword">Password:</label>
            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" />
            <asp:RequiredFieldValidator ControlToValidate="txtPassword" ErrorMessage="Password is required" runat="server" />
        </div>
        <div>
            <asp:Button ID="btnRegister" Text="Register" runat="server" OnClick="btnRegister_Click" />
        </div>
</asp:Content>
