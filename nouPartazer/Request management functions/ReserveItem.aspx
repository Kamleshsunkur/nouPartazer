<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReserveItem.aspx.cs" Inherits="nouPartazer.Request_management_functions.ReserveItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Reserve Item</h2>
    <form id="reserveForm" runat="server">
        <asp:HiddenField ID="HiddenItemId" runat="server" />
        
        <div>
            <label for="txtQuantity">Quantity:</label>
            <asp:TextBox ID="txtQuantity" runat="server" />
        </div>
        <div>
            <label for="txtSize">Size (if applicable):</label>
            <asp:TextBox ID="txtSize" runat="server" />
        </div>
        <div>
            <label for="txtAgeRange">Age Range (if applicable):</label>
            <asp:TextBox ID="txtAgeRange" runat="server" />
        </div>
        <div>
            <asp:Button ID="btnSendRequest" Text="Send Request" runat="server" OnClick="btnSendRequest_Click" />
        </div>
    </form>
</asp:Content>