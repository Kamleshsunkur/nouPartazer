<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditItem.aspx.cs" Inherits="nouPartazer.user_registration_MF.EditItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Edit Posted Item</h2>
    <form id="editItemForm" runat="server">
        <asp:HiddenField ID="HiddenItemId" runat="server" />
        <div>
            <label for="txtItemName">Item Name:</label>
            <asp:TextBox ID="txtItemName" runat="server" />
        </div>
        <div>
            <label for="txtDescription">Description:</label>
            <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" />
        </div>
        <div>
            <label for="ddlCategory">Category:</label>
            <asp:DropDownList ID="ddlCategory" runat="server">
                <!-- Populate categories -->
            </asp:DropDownList>
        </div>
        <div>
            <asp:Button ID="btnUpdateItem" Text="Update Item" runat="server" OnClick="btnUpdateItem_Click" />
        </div>
    </form>
</asp:Content>