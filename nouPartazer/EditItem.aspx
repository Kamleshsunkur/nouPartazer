<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditItem.aspx.cs" Inherits="nouPartazer.user_registration_MF.EditItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Page Header -->
    <div style="text-align: center; padding: 30px; background-color: #f8f9fa;">
        <h1 style="font-size: 2.5rem; color: #007BFF;">Edit Posted Item</h1>
        <p style="font-size: 1.2rem; color: #6c757d;">
            Update the details of your posted item below. Ensure the information is accurate and complete.
        </p>
    </div>

    <!-- Edit Item Form -->
    <div style="max-width: 600px; margin: 30px auto; padding: 20px; background-color: #ffffff; border: 1px solid #e9ecef; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
        <h2 style="text-align: center; color: #007BFF; margin-bottom: 20px;">Edit Item Details</h2>
        <form style="display: flex; flex-direction: column; gap: 20px;">
            <!-- Hidden Field for Item ID -->
            <asp:HiddenField ID="HiddenItemId" runat="server" />

            <!-- Item Name -->
            <div>
                <label for="txtItemName" style="font-size: 1.1rem;">Item Name:</label>
                <asp:TextBox ID="txtItemName" runat="server" placeholder="Enter item name"
                             style="width: 100%; padding: 10px; border: 1px solid #ced4da; border-radius: 4px;" />
            </div>

            <!-- Description -->
            <div>
                <label for="txtDescription" style="font-size: 1.1rem;">Description:</label>
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="5" placeholder="Enter item description"
                             style="width: 100%; padding: 10px; border: 1px solid #ced4da; border-radius: 4px;" />
            </div>

            <!-- Category -->
            <div>
                <label for="ddlCategory" style="font-size: 1.1rem;">Category:</label>
                <asp:DropDownList ID="ddlCategory" runat="server" 
                                  style="width: 100%; padding: 10px; border: 1px solid #ced4da; border-radius: 4px;">
                </asp:DropDownList>
            </div>

            <!-- Update Button -->
            <div style="text-align: center;">
                <asp:Button ID="btnUpdateItem" Text="Update Item" runat="server" OnClick="btnUpdateItem_Click"
                    style="background-color: #007BFF; color: white; padding: 10px 20px; border: none; border-radius: 4px; font-size: 1rem; cursor: pointer;" />
            </div>
        </form>
    </div>
</asp:Content>