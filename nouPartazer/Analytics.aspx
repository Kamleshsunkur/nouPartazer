<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Analytics.aspx.cs" Inherits="nouPartazer.Analytical_and_monitoring_functions.Analytics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Page Header -->
    <div style="text-align: center; padding: 30px; background-color: #f8f9fa;">
        <h1 style="font-size: 2.5rem; color: #007BFF; margin-bottom: 10px;">Analytics Overview</h1>
        <p style="font-size: 1.2rem; max-width: 800px; margin: 0 auto; color: #6c757d;">
            Gain insights into platform activity. View trends in item availability and contributions made by our donors.
        </p>
    </div>

    <!-- Item List Section -->
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
