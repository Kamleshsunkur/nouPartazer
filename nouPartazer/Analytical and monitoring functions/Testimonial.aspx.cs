using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nouPartazer.Analytical_and_monitoring_functions
{
    public partial class Testimonial : System.Web.UI.Page
    {
        protected void btnSubmitTestimonial_Click(object sender, EventArgs e)
        {
            string ngoName = txtNgoName.Text;
            string testimonial = txtTestimonial.Text;

            using (SqlConnection conn = new SqlConnection("your_connection_string"))
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO Testimonials (NgoName, Testimonial) VALUES (@NgoName, @Testimonial)", conn);
                cmd.Parameters.AddWithValue("@NgoName", ngoName);
                cmd.Parameters.AddWithValue("@Testimonial", testimonial);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }

            Response.Redirect("Index.aspx"); // Redirect after submission
        }
    }
}