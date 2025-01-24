<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MangeCategories.aspx.cs" Inherits="nouPartazer.Admin_Management_functions.MangeCategories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Manage Categories</h2>
    <form id="categoryForm" runat="server">
        <div>
            <label for="txtCategoryName">Category Name:</label>
            <asp:TextBox ID="txtCategoryName" runat="server" />
        </div>
        <div>
            <asp:Button ID="btnAddCategory" Text="Add Category" runat="server" OnClick="btnAddCategory_Click" />
        </div>
    </form>
    
    <asp:GridView ID="gridCategories" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="CategoryID" HeaderText="ID" />
            <asp:BoundField DataField="CategoryName" HeaderText="Category Name" />
        </Columns>
    </asp:GridView>
</asp:Content>