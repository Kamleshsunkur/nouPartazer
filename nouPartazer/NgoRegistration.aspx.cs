using System;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.Web.UI;

namespace nouPartazer
{
    public partial class NgoRegistration : System.Web.UI.Page
    {
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string ngoName = txtNgoName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text;

            try
            {
                // Validate form inputs
                if (string.IsNullOrEmpty(ngoName) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
                {
                    ShowAlert("Please fill in all fields.");
                    return;
                }

                // Hash the password before storing it
                string hashedPassword = HashPassword(password);

                // Connection string for your database
                string connectionString = "Server=DESKTOP-O8M3F3T\\MSSQLSERVER1;Database=NouPartazerDB;Trusted_Connection=True;";

                // SQL query to insert NGO information into the database
                string query = "INSERT INTO NGOs (NgoName, Email, Password, IsApproved) VALUES (@NgoName, @Email, @Password, @IsApproved)";

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        // Add parameters to prevent SQL injection
                        cmd.Parameters.AddWithValue("@NgoName", ngoName);
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Password", hashedPassword); // Store the hashed password
                        cmd.Parameters.AddWithValue("@IsApproved", 0); // Default value: Pending approval

                        conn.Open();

                        // Execute the query and check rows affected
                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            // Show a success message
                            ShowAlert("NGO registered successfully! Awaiting approval.");
                            Response.Redirect("Login.aspx");
                        }
                        else
                        {
                            ShowAlert("NGO registration failed! No rows affected. Please try again.");
                        }
                    }
                }
            }
            catch (SqlException sqlEx)
            {
                // Handle SQL-related exceptions
                LogError(sqlEx);
                ShowAlert($"Database error: {sqlEx.Message}");
            }
            catch (Exception ex)
            {
                // Handle other exceptions
                LogError(ex);
                ShowAlert($"An error occurred: {ex.Message}");
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

        // Method to display alert messages
        private void ShowAlert(string message)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", $"alert('{message}');", true);
        }

        // Method to log errors for debugging
        private void LogError(Exception ex)
        {
            string logPath = Server.MapPath("~/Logs/ErrorLog.txt");
            string errorMessage = $"{DateTime.Now}: {ex.Message}\n{ex.StackTrace}\n";
            System.IO.File.AppendAllText(logPath, errorMessage);
        }
    }
}
