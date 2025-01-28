using System;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;

namespace nouPartazer
{
    public partial class Login : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtUsername.Text.Trim(); // Use Email for NGO Login
            string password = txtPassword.Text;

            try
            {
                // Validate user input
                if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
                {
                    lblMessage.Text = "Please fill in all fields.";
                    return;
                }

                // Hash the password before checking it against the database
                string hashedPassword = HashPassword(password);

                // Connection string for your database
                string connectionString = "Server=DESKTOP-O8M3F3T\\MSSQLSERVER1;Database=NouPartazerDB;Trusted_Connection=True;";

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    // SQL query to validate NGO login credentials
                    string query = "SELECT COUNT(*) FROM NGOs WHERE Email = @Email AND Password = @Password and IsApproved=1";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        // Add parameters to prevent SQL injection
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Password", hashedPassword);

                        conn.Open();

                        // Execute the query and check the result
                        int count = (int)cmd.ExecuteScalar();

                        if (count > 0)
                        {
                            // Successful login
                            Session["NGOEmail"] = email; // Store email in session

                            if (chkRememberMe.Checked)
                            {
                                HttpCookie cookie = new HttpCookie("NGOCredentials");
                                cookie["Email"] = email; // Store email
                                cookie.Expires = DateTime.Now.AddDays(30);
                                Response.Cookies.Add(cookie);
                            }

                            // Redirect to the home page
                            Response.Redirect("Index.aspx");
                        }
                        else
                        {
                            // Invalid credentials or not approved
                            lblMessage.Text = "Invalid credentials or account not approved.";
                        }
                    }
                }
            }
            catch (SqlException sqlEx)
            {
                // Handle SQL-related exceptions
                lblMessage.Text = "A database error occurred. Please try again later.";
                LogError(sqlEx); // Log detailed error for troubleshooting
            }
            catch (Exception ex)
            {
                // Handle other exceptions
                lblMessage.Text = "An unexpected error occurred. Please try again.";
                LogError(ex); // Log detailed error for troubleshooting
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

        // Method to log errors (for troubleshooting)
        private void LogError(Exception ex)
        {
            string logPath = Server.MapPath("~/Logs/ErrorLog.txt");
            string errorMessage = $"{DateTime.Now}: {ex.Message}{Environment.NewLine}{ex.StackTrace}{Environment.NewLine}";
            System.IO.File.AppendAllText(logPath, errorMessage);
        }
    }
}
