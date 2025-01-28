using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace nouPartazer
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void btnSendMessage_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string message = txtMessage.Text.Trim();

            try
            {
                // Validate inputs
                if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(message))
                {
                    ShowAlert("Please fill in all fields.");
                    return;
                }

                // Connection string for your database
                string connectionString = "Server=DESKTOP-O8M3F3T\\MSSQLSERVER1;Database=NouPartazerDB;Trusted_Connection=True;";

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    string query = "INSERT INTO ContactMessages (Name, Email, Message) VALUES (@Name, @Email, @Message)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        // Add parameters to prevent SQL injection
                        cmd.Parameters.AddWithValue("@Name", name);
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Message", message);

                        conn.Open();

                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            // Show a success message
                            ShowAlert("Your message has been sent successfully!");
                            // Show success message
                            lblSuccessMessage.Text = "Thank you for contacting us! We will respond shortly.";
                            lblSuccessMessage.Visible = true;

                            // Redirect to the home page after submission
                            Response.Redirect("Index.aspx");


                        }
                        else
                        {
                            ShowAlert("Failed to send your message. Please try again.");
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
