<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PostItem.aspx.cs" Inherits="nouPartazer.user_registration_MF.PostItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Post Item for Donation</h2>
    <form id="itemForm" runat="server">
        <div>
            <label for="txtItemName">Item Name:</label>
            <asp:TextBox ID="txtItemName" runat="server" />
        </div>
        <div>
            <label for="txtDescription">Description:</label>
            <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" />
        </div>
        <div>
            <label for="txtCategory">Category:</label>
            <asp:DropDownList ID="ddlCategory" runat="server">
                <asp:ListItem Text="Select Category" Value="" />
                <asp:ListItem Text="Clothing" Value="Clothing" />
                <asp:ListItem Text="Food" Value="Food" />
                <asp:ListItem Text="Medical" Value="Medical" />
                <!-- Add more categories as needed -->
            </asp:DropDownList>
        </div>
        <div>
            <asp:Button ID="btnPostItem" Text="Post Item" runat="server" OnClick="btnPostItem_Click" />
        </div>
    </form>
</asp:Content>