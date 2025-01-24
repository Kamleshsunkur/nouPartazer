<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MassRequest.aspx.cs" Inherits="nouPartazer.NGO_functions.MassRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Mass Request for Assistance</h2>
    <form id="massRequestForm" runat="server">
        <div>
            <label for="txtMessage">Request Message:</label>
            <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" />
        </div>
        <div>
            <asp:Button ID="btnSendMassRequest" Text="Send Request" runat="server" OnClick="btnSendMassRequest_Click" />
        </div>
    </form>
</asp:Content>