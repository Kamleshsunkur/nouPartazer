<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewItems.aspx.cs" Inherits="nouPartazer.NGO_functions.ViewItems" %>





<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Available Items</h2>
    <asp:GridView ID="gridItems" runat="server" AutoGenerateColumns="False" OnRowCommand="gridItems_RowCommand">
        <Columns>
            <asp:BoundField DataField="ItemName" HeaderText="Item Name" />
            <asp:BoundField DataField="Description" HeaderText="Description" />
            <asp:TemplateField HeaderText="Action">
                <ItemTemplate>
                    <asp:Button ID="btnReserve" runat="server" Text="Reserve" CommandName="Reserve" CommandArgument='<%# Eval("ItemID") %>' />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>