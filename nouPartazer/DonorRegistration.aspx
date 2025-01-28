﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DonorRegistration.aspx.cs" Inherits="nouPartazer.DonorRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Register as Donor</h2>
  
        <div>
            <label for="txtUsername">Username:</label>
            <asp:TextBox ID="txtUsername" runat="server" Required="true" />
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