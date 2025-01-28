<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Testimonial.aspx.cs" Inherits="nouPartazer.Analytical_and_monitoring_functions.Testimonial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Page Header -->
    <div style="text-align: center; padding: 30px; background-color: #f8f9fa;">
        <h1 style="font-size: 2.5rem; color: #007BFF; margin-bottom: 10px;">Post a Testimonial</h1>
        <p style="font-size: 1.2rem; max-width: 800px; margin: 0 auto; color: #6c757d;">
            Share your experience with nouPartazer. Let other users know how our platform has made a difference for your NGO or community.
        </p>
    </div>

    <!-- Testimonial Form -->
    <div style="max-width: 600px; margin: 30px auto; padding: 20px; background-color: #ffffff; border: 1px solid #e9ecef; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
        <h2 style="text-align: center; color: #007BFF; margin-bottom: 20px;">Share Your Testimonial</h2>
        <form style="display: flex; flex-direction: column; gap: 20px;">
            <!-- NGO Name Field -->
            <div>
                <label for="txtNgoName" style="font-size: 1.1rem;">Your NGO Name:</label>
                <asp:TextBox ID="txtNgoName" runat="server" placeholder="Enter your NGO name" 
                             style="width: 100%; padding: 10px; border: 1px solid #ced4da; border-radius: 4px;" />
            </div>

            <!-- Testimonial Field -->
            <div>
                <label for="txtTestimonial" style="font-size: 1.1rem;">Your Testimonial:</label>
                <asp:TextBox ID="txtTestimonial" runat="server" TextMode="MultiLine" Rows="5" placeholder="Write your testimonial here"
                             style="width: 100%; padding: 10px; border: 1px solid #ced4da; border-radius: 4px;" />
            </div>

            <!-- Submit Button -->
            <div style="text-align: center;">
                <asp:Button ID="btnSubmitTestimonial" Text="Submit" runat="server" OnClick="btnSubmitTestimonial_Click"
                    style="background-color: #007BFF; color: white; padding: 10px 20px; border: none; border-radius: 4px; font-size: 1rem; cursor: pointer;" />
            </div>
        </form>
    </div>
</asp:Content>