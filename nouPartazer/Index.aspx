<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="nouPartazer.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   >
 
  <div style="background-image:url('img/main.jpg'); background-size:cover; background-position:center; height: 400px; display: flex; align-items: center; justify-content: center; color: white; text-align: center;">
        <h1>Welcome to nouPartazer</h1>
        <p>Helping our community by connecting donors with those in need.</p>
        <div class="button">
            <a class="btn" href="#">Get Involved</a>
        </div>
    </div>
           
    
    <section id="features" class="features">
        <div class="container">
            <h2>Our Features</h2>
            <div class="row">
                <div class="single-features">
                    <h3>Donor Registration</h3>
                    <p><a href="DonorRegistration.aspx">Register as a donor to post items for donation.</a></p>
                </div>
                <div class="single-features">
                    <h3>NGO Registration</h3>
                    <p><a href="NgoRegistration.aspx">NGOs can register and view available items for assistance.</a></p>
                </div>
                <div class="single-features">
                    <h3>Request Management</h3>
                    <p><a href="ViewItems.aspx">NGOs can send requests for items, and donors can manage these requests.</a></p>
                </div>
                <div class="single-features">
                    <h3>Admin Functionality</h3>
                    <p><a href="AdminPanel.aspx">Admin can manage users, items, and view analytics.</a></p>
                </div>
                <div class="single-features">
                    <h3>Testimonial Posting</h3>
                    <p><a href="Testimonial.aspx">NGOs can post their testimonials about our service.</a></p>
                </div>
            </div>
        </div>
    </section>
    
    <section id="about" class="about-area">
        <div class="container">
            <h2>About nouPartazer</h2>
            <p>We are committed to supporting vulnerable members of our society through donations and assistance.</p>
        </div>
    </section>
</asp:Content>

