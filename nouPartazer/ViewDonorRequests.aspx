<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewDonorRequests.aspx.cs" Inherits="nouPartazer.Request_management_functions.ViewDonorRequests" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Your Requests</h2>
    <asp:GridView ID="gridDonorRequests" runat="server" AutoGenerateColumns="False" OnRowCommand="gridDonorRequests_RowCommand">
        <Columns>
            <asp:BoundField DataField="RequestID" HeaderText="Request ID" />
            <asp:BoundField DataField="NGOName" HeaderText="NGO Name" />
            <asp:BoundField DataField="ItemRequested" HeaderText="Requested Item" />
            <asp:TemplateField HeaderText="Action">
                <ItemTemplate>
                    <asp:Button ID="btnAccept" runat="server" Text="Accept" CommandName="Accept" CommandArgument='<%# Eval("RequestID") %>' />
                    <asp:Button ID="btnReject" runat="server" Text="Reject" CommandName="Reject" CommandArgument='<%# Eval("RequestID") %>' />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>