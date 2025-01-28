using System;
using System.Data.SqlClient;
using System.Web.UI;
using nouPartazer.Helpers; // Import the helper namespace

namespace nouPartazer.Analytical_and_monitoring_functions
{
    public partial class Testimonial : System.Web.UI.Page
    {
        protected void btnSubmitTestimonial_Click(object sender, EventArgs e)
        {
            string ngoName = txtNgoName.Text;
            string testimonial = txtTestimonial.Text;

            try
            {
                // SQL query to insert data into the Testimonials table
                string query = "INSERT INTO Testimonials (NgoName, Testimonial) VALUES (@NgoName, @Testimonial)";
                SqlParameter[] parameters = new SqlParameter[]
                {
                    new SqlParameter("@NgoName", ngoName),
                    new SqlParameter("@Testimonial", testimonial)
                };

                // Call the DatabaseHelper method to execute the query
                DatabaseHelper.ExecuteNonQuery(query, parameters);

                // Show a success popup
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Testimonial submitted successfully!');", true);
            }
            catch (Exception ex)
            {
                // Show an error popup
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", $"alert('An error occurred: {ex.Message}');", true);
            }
        }
    }
}
