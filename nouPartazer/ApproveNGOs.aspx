<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ApproveNGOs.aspx.cs" Inherits="nouPartazer.Admin_Management_functions.ApproveNGOs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div style="text-align: center; padding: 30px; background-color: #f8f9fa;">
        <h1 style="font-size: 2.5rem; color: #007BFF; margin-bottom: 10px;">Approve NGOs</h1>
        <p style="font-size: 1.2rem; max-width: 800px; margin: 0 auto; color: #6c757d;">
            Review and manage NGO registration requests. Approve genuine NGOs to give them access to our platform or reject registrations if they do not meet the criteria.
        </p>
    </div>

 
    <div style="max-width: 800px; margin: 30px auto; padding: 20px; background-color: #ffffff; border: 1px solid #e9ecef; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
        <h2 style="text-align: center; color: #007BFF; margin-bottom: 20px;">Pending NGO Approvals</h2>
        <asp:GridView ID="gridNGOs" runat="server" AutoGenerateColumns="False" CssClass="table" OnRowCommand="gridNGOs_RowCommand"
            Style="margin: 0 auto; width: 100%; border-collapse: collapse; text-align: center;">
            <Columns>
               
                <asp:BoundField DataField="NGOName" HeaderText="NGO Name" />
               
                <asp:BoundField DataField="Email" HeaderText="Email" />
               
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:Button ID="btnApprove" runat="server" Text="Approve" CommandName="Approve" CommandArgument='<%# Eval("NGOID") %>'
                            style="background-color: #28a745; color: white; border: none; padding: 5px 10px; border-radius: 4px; cursor: pointer;" />
                        <asp:Button ID="btnReject" runat="server" Text="Reject" CommandName="Reject" CommandArgument='<%# Eval("NGOID") %>'
                            style="background-color: #dc3545; color: white; border: none; padding: 5px 10px; border-radius: 4px; cursor: pointer;" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>