<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="nouPartazer.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Hero Section -->
<div class="background-section">
        <div>
            <h1>Welcome to nouPartazer</h1>
            <p style="color: #808080">
    At nouPartazer, we believe in the power of sharing and connecting. 
    Our platform bridges the gap between generous donors and NGOs working tirelessly 
    to support vulnerable communities. Join us in creating a lasting positive impact.
</p>
            <a href="DonorRegistration.aspx" class="get-involved-btn">Get Involved</a>
        </div>
    </div>

    <!-- Features Section -->
    <section id="features" class="features" style="padding: 50px 0; background-color: #f8f9fa;">
        <div class="container">
            <h2 style="text-align: center; font-size: 3rem; margin-bottom: 40px;">Our Features</h2>
            <div class="row" style="display: flex; flex-wrap: wrap; justify-content: space-around;">
                <!-- Feature 1 -->
                <div class="single-features" style="width: 25%; margin-bottom: 15px; background: white; padding: 15px; border-radius: 10px; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);">
                    <h3 style="font-size: 1.7rem; margin-bottom: 10px;">Donor Registration</h3>
                  
                   <p style="font-size: 18px;">
                        Donors play a vital role in transforming lives. By registering on our platform, you can list items that you no longer need and ensure they reach individuals or organizations that can put them to good use. Whether it's clothing, food, or essential supplies, every donation makes a difference. 
                        <a href="DonorRegistration.aspx" style="color: #007bff; text-decoration: underline;">Become a donor today</a>.
                    </p>
                </div>

                <!-- Feature 2 -->
                <div class="single-features" style="width: 25%; margin-bottom: 15px; background: white; padding: 15px; border-radius: 10px; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);">
                    <h3 style="font-size: 1.7rem; margin-bottom: 10px;">NGO Registration</h3>
                   <p style="font-size: 18px;">
                        Are you part of an NGO? Join nouPartazer to gain access to a network of generous donors. Our platform enables NGOs to request essential items, connect with donors, and track donations seamlessly. Let’s work together to provide aid to those who need it most.
                        <a href="NgoRegistration.aspx" style="color: #007bff; text-decoration: underline;">Sign up now</a>.
                    </p>
                </div>

                <!-- Feature 3 -->
                <div class="single-features" style="width: 25%; margin-bottom: 15px; background: white; padding: 15px; border-radius: 10px; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);">
                    <h3 style="font-size: 1.7rem; margin-bottom: 10px;">Request Management</h3>
                    <p style="font-size: 18px;">
                        Managing requests for donations has never been easier. NGOs can specify the items they need, while donors can browse and approve these requests. This transparent process ensures donations reach the right hands efficiently and effectively. 
                        <a href="ViewItems.aspx" style="color: #007bff; text-decoration: underline;">Explore how it works</a>.
                    </p>
                </div>

                <!-- Feature 4 -->
                <div class="single-features" style="width: 25%; margin-bottom: 15px; background: white; padding: 15px; border-radius: 10px; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);">
                    <h3 style="font-size: 1.7rem; margin-bottom: 10px;">Admin Functionality</h3>
                   <p style="font-size: 18px;">
                        Our admin panel empowers administrators to monitor all activities on the platform. From managing users to overseeing donations and tracking analytics, the admin panel ensures the platform operates smoothly and fairly.
                        <a href="AdminPanel.aspx" style="color: #007bff; text-decoration: underline;">Access the admin panel</a>.
                    </p>
                </div>

                <!-- Feature 5 -->
                <div class="single-features" style="width: 25%; margin-bottom: 15px; background: white; padding: 15px; border-radius: 10px; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);">
                    <h3 style="font-size: 1.7rem; margin-bottom: 10px;">Testimonial Posting</h3>
                  <p style="font-size: 18px;">
                        Share your journey with nouPartazer. Testimonials from NGOs and donors highlight the positive impact of the platform and inspire others to join. Together, we can build a community of trust and compassion.
                        <a href="Testimonial.aspx" style="color: #007bff; text-decoration: underline;">Post a testimonial</a>.
                    </p>
                </div>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section id="about" class="about-area" style="padding: 60px 0; background-color: #ffffff;">
        <div class="container">
            <h2 style="text-align: center; font-size: 3rem; margin-bottom: 30px;">About nouPartazer</h2>
            <p style="text-align: center; font-size: 1.3rem; max-width: 900px; margin: 0 auto; line-height: 1.8;">
                nouPartazer, derived from the Creole word meaning "sharing," embodies the spirit of generosity and community support. We are committed to bridging the gap between those who want to give and those who need support. Our platform ensures transparency, accountability, and ease of use for everyone involved. By fostering these connections, we aim to create a ripple effect of kindness and impact that transcends boundaries.
            </p>
        </div>
    </section>
     <!-- About Us Header -->
 <div style="background-color: #f8f9fa; padding: 50px 30px; text-align: center;">
     <h1 style="font-size: 3rem; color: #007BFF; font-weight: bold; margin-bottom: 20px;">About Us</h1>
     <p style="font-size: 1.2rem; color: #6c757d; max-width: 800px; margin: 0 auto;">
         At <strong>nouPartazer</strong>, we are dedicated to building a bridge between donors and organizations in need. 
         By fostering connections and facilitating acts of generosity, we aim to create lasting positive impacts in communities worldwide.
     </p>
 </div>

 <!-- Our Mission, Vision, and Values -->
 <div style="max-width: 1000px; margin: 40px auto; display: flex; flex-wrap: wrap; gap: 30px; justify-content: center;">
     <!-- Mission -->
     <div style="flex: 1 1 300px; padding: 20px; background-color: #ffffff; border: 1px solid #e9ecef; border-radius: 8px; text-align: center; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
         <h2 style="color: #007BFF; font-size: 2rem; margin-bottom: 15px;">Our Mission</h2>
         <p style="font-size: 1rem; color: #6c757d;">
             To connect donors and NGOs to facilitate the sharing of resources and services that empower communities in need.
         </p>
     </div>

     <!-- Vision -->
     <div style="flex: 1 1 300px; padding: 20px; background-color: #ffffff; border: 1px solid #e9ecef; border-radius: 8px; text-align: center; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
         <h2 style="color: #007BFF; font-size: 2rem; margin-bottom: 15px;">Our Vision</h2>
         <p style="font-size: 1rem; color: #6c757d;">
             A world where generosity knows no boundaries, and every individual has access to the support they need to thrive.
         </p>
     </div>

     <!-- Values -->
     <div style="flex: 1 1 300px; padding: 20px; background-color: #ffffff; border: 1px solid #e9ecef; border-radius: 8px; text-align: center; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
         <h2 style="color: #007BFF; font-size: 2rem; margin-bottom: 15px;">Our Values</h2>
         <ul style="font-size: 1rem; color: #6c757d; list-style: none; padding: 0;">
             <li>🌍 Community Empowerment</li>
             <li>❤️ Compassion and Care</li>
             <li>🤝 Transparency and Trust</li>
             <li>🌟 Innovation in Giving</li>
         </ul>
     </div>
 </div>

 <!-- Why Choose Us -->
 <div style="max-width: 1000px; margin: 40px auto; text-align: center;">
     <h2 style="color: #007BFF; font-size: 2.5rem; margin-bottom: 20px;">Why Choose nouPartazer?</h2>
     <p style="font-size: 1.2rem; color: #6c757d; max-width: 800px; margin: 0 auto; margin-bottom: 30px;">
         We make giving easier and more impactful. Our platform ensures resources are directed to where they are needed most, 
         while maintaining accountability and fostering meaningful connections between donors and NGOs.
     </p>
     <a href="NgoRegistration.aspx" style="background-color: #007bff; color: white; padding: 12px 24px; text-decoration: none; border-radius: 8px; font-size: 1.2rem;">Join Us</a>
 </div>

 <!-- Team Section -->
 <div style="background-color: #f8f9fa; padding: 50px;">
     <h2 style="text-align: center; color: #007BFF; font-size: 2.5rem; margin-bottom: 30px;">Meet Our Team</h2>
     <div style="display: flex; flex-wrap: wrap; gap: 30px; justify-content: center; max-width: 1000px; margin: 0 auto;">
         <!-- Team Member -->
         <div style="flex: 1 1 200px; text-align: center; padding: 20px; background-color: #ffffff; border: 1px solid #e9ecef; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
             <img src="img/team1.jpg" alt="Team Member" style="width: 100px; height: 100px; border-radius: 50%; margin-bottom: 15px;" />
             <h3 style="color: #007BFF; font-size: 1.5rem;">John Doe</h3>
             <p style="font-size: 1rem; color: #6c757d;">Founder & CEO</p>
         </div>
         <!-- Repeat for other team members -->
     </div>
 </div>

</asp:Content>
