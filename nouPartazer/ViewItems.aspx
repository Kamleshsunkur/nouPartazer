<%@ Page Title="View Items" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewItems.aspx.cs" Inherits="nouPartazer.NGO_functions.ViewItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 style="text-align: center; margin-bottom: 20px; color: #007BFF;">Add New Item</h2>
    <div style="max-width: 700px; margin: 0 auto; padding: 20px; background: #f9f9f9; border-radius: 10px; box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);">
        <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Green" style="font-size: 16px;"></asp:Label>
        <div style="margin-bottom: 15px;">
            <asp:Label ID="lblItemName" runat="server" Text="Item Name:" AssociatedControlID="txtItemName"></asp:Label>
            <asp:TextBox ID="txtItemName" runat="server" CssClass="form-control" style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px;"></asp:TextBox>
        </div>
        <div style="margin-bottom: 15px;">
            <asp:Label ID="lblDescription" runat="server" Text="Description:" AssociatedControlID="txtDescription"></asp:Label>
            <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4" style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 5px;"></asp:TextBox>
        </div>
        <div style="margin-bottom: 15px;">
            <asp:Label ID="lblUpload" runat="server" Text="Upload Image:" AssociatedControlID="fileUploadControl"></asp:Label>
            <asp:FileUpload ID="fileUploadControl" runat="server" CssClass="form-control" />
        </div>
        <asp:Button ID="btnUpload" runat="server" Text="Add Item" OnClick="btnUpload_Click" CssClass="btn btn-primary" style="padding: 10px 20px; font-size: 16px; border-radius: 5px;" />
    </div>

    <h2 style="text-align: center; margin-top: 40px; color: #007BFF;">Item List</h2>
    <div style="max-width: 1200px; margin: 20px auto; overflow-x: auto;">
        <asp:GridView ID="gridItems" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-hover" HeaderStyle-BackColor="#007BFF" HeaderStyle-ForeColor="White" HeaderStyle-Font-Bold="True" RowStyle-VerticalAlign="Middle">
            <Columns>
                <asp:BoundField DataField="ItemName" HeaderText="Item Name" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="300px" />
                <asp:BoundField DataField="Description" HeaderText="Description" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="500px" />
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <div style="text-align: center;">
                            <img src='<%# ResolveUrl(Eval("ImagePath").ToString()) %>' alt="Item Image" style="width: 200px; height: auto; border-radius: 5px; box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);" />
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
