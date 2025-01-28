<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SearchUsers.aspx.cs" Inherits="nouPartazer.Admin_Management_functions.SearchUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Search Users</h2>
    <div>
        <label for="txtSearchUser">Search:</label>
        <asp:TextBox ID="txtSearchUser" runat="server" />
        <asp:Button ID="btnSearchUser" Text="Search" runat="server" OnClick="btnSearchUser_Click" />
    </div>
    <asp:GridView ID="gridUsers" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="UserID" HeaderText="User ID" />
            <asp:BoundField DataField="Username" HeaderText="Username" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
        </Columns>
    </asp:GridView>
</asp:Content>
