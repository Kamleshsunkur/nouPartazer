<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Testimonial.aspx.cs" Inherits="nouPartazer.Analytical_and_monitoring_functions.Testimonial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Post a Testimonial</h2>
    <form id="testimonialForm" runat="server">
        <div>
            <label for="txtNgoName">Your NGO Name:</label>
            <asp:TextBox ID="txtNgoName" runat="server" />
        </div>
        <div>
            <label for="txtTestimonial">Your Testimonial:</label>
            <asp:TextBox ID="txtTestimonial" runat="server" TextMode="MultiLine" />
        </div>
        <div>
            <asp:Button ID="btnSubmitTestimonial" Text="Submit" runat="server" OnClick="btnSubmitTestimonial_Click" />
        </div>
    </form>
</asp:Content>