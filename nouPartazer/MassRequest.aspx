<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MassRequest.aspx.cs" Inherits="nouPartazer.NGO_functions.MassRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Page Header -->
    <div style="text-align: center; padding: 30px; background-color: #f8f9fa;">
        <h1 style="font-size: 2.5rem; color: #007BFF; margin-bottom: 10px;">Mass Request for Assistance</h1>
        <p style="font-size: 1.2rem; max-width: 800px; margin: 0 auto; color: #6c757d;">
            Use this feature to send a message requesting assistance to all registered donors or NGOs. Ensure the message is clear and concise to effectively communicate your needs.
        </p>
    </div>

    <!-- Mass Request Form -->
    <div style="max-width: 600px; margin: 30px auto; padding: 20px; background-color: #ffffff; border: 1px solid #e9ecef; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
        <h2 style="text-align: center; color: #007BFF; margin-bottom: 20px;">Compose Your Request</h2>
        <form style="display: flex; flex-direction: column; gap: 20px;">
            <!-- Message Field -->
            <div style="display: flex; flex-direction: column;">
                <label for="txtMessage" style="font-size: 1.1rem; margin-bottom: 5px;">Request Message:</label>
                <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="5" placeholder="Type your message here" 
                             style="width: 100%; padding: 10px; border: 1px solid #ced4da; border-radius: 4px;"></asp:TextBox>
            </div>

            <!-- Send Button -->
            <div style="text-align: center;">
                <asp:Button ID="btnSendMassRequest" Text="Send Request" runat="server" OnClick="btnSendMassRequest_Click"
                    style="background-color: #007BFF; color: white; padding: 10px 20px; border: none; border-radius: 4px; font-size: 1rem; cursor: pointer;" />
            </div>
        </form>
    </div>
</asp:Content>