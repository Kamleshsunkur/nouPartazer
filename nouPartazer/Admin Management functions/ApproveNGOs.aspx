<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ApproveNGOs.aspx.cs" Inherits="nouPartazer.Admin_Management_functions.ApproveNGOs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Approve NGOs</h2>
    <asp:GridView ID="gridNGOs" runat="server" AutoGenerateColumns="False" OnRowCommand="gridNGOs_RowCommand">
        <Columns>
            <asp:BoundField DataField="NGOName" HeaderText="NGO Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:TemplateField HeaderText="Action">
                <ItemTemplate>
                    <asp:Button ID="btnApprove" runat="server" Text="Approve" CommandName="Approve" CommandArgument='<%# Eval("NGOID") %>' />
                    <asp:Button ID="btnReject" runat="server" Text="Reject" CommandName="Reject" CommandArgument='<%# Eval("NGOID") %>' />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>