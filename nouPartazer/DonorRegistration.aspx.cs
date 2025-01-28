using System;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.Web.UI;
using nouPartazer.Helpers; // Import the helper namespace

namespace nouPartazer
{
    public partial class DonorRegistration : System.Web.UI.Page
    {
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string email = txtEmail.Text;
            string password = txtPassword.Text;

            try
            {
                // Hash the password before storing it
                string hashedPassword = HashPassword(password);

                // SQL query to insert donor information into the database
                string query = "INSERT INTO Donors (Username, Email, Password) VALUES (@Username, @Email, @Password)";
                SqlParameter[] parameters = new SqlParameter[]
                {
                    new SqlParameter("@Username", username),
                    new SqlParameter("@Email", email),
                    new SqlParameter("@Password", hashedPassword)
                };

                // Use the DatabaseHelper to execute the query
                DatabaseHelper.ExecuteNonQuery(query, parameters);

                // Show a success message
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Registration successful!');", true);

                // Optionally redirect after showing the popup
                Response.Redirect("Index.aspx");
            }
            catch (Exception ex)
            {
                // Show an error message in case of failure
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", $"alert('An error occurred: {ex.Message}');", true);
            }
        }

        // Method to hash the password using SHA256
        private string HashPassword(string password)
        {
            using (SHA256 sha256 = SHA256.Create())
            {
                // Convert the password string to bytes
                byte[] passwordBytes = Encoding.UTF8.GetBytes(password);

                // Compute the hash
                byte[] hashedBytes = sha256.ComputeHash(passwordBytes);

                // Convert the hashed bytes back to a string
                return Convert.ToBase64String(hashedBytes);
            }
        }
    }
}
