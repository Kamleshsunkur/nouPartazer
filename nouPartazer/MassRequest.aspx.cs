using System;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Web.UI;
using nouPartazer.Helpers; // Import the helper namespace

namespace nouPartazer.NGO_functions
{
    public partial class MassRequest : System.Web.UI.Page
    {
        protected void btnSendMassRequest_Click(object sender, EventArgs e)
        {
            string message = txtMessage.Text;

            try
            {
                // SQL query to retrieve all donor emails
                string query = "SELECT Email FROM Donors";

                // Use the DatabaseHelper to execute the query and get a DataTable
                DataTable donorEmails = DatabaseHelper.ExecuteQuery(query, null);

                // Loop through each email, send the message, and save it to the database
                foreach (DataRow row in donorEmails.Rows)
                {
                    string email = row["Email"].ToString();

                    // Send the email
                    SendEmail(email, message);

                    // Save the message into the database
                    SaveMessageToDatabase(email, message);
                }

                // Show success message
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Mass request sent successfully and saved in the database!');", true);

                // Redirect after sending emails
                Response.Redirect("Index.aspx");
            }
            catch (Exception ex)
            {
                // Show an error message in case of failure
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", $"alert('An error occurred: {ex.Message}');", true);
            }
        }

        // Method to send an email
        private void SendEmail(string email, string message)
        {
            try
            {
                using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587)) // Gmail SMTP server
                {
                    smtp.Credentials = new System.Net.NetworkCredential("kamleshsunkur12@gmail.com", "shzp vqhh ayqu gpnv"); // Use the app password
                    smtp.EnableSsl = true; // Enable SSL for secure communication

                    MailMessage mail = new MailMessage();
                    mail.From = new MailAddress("kamleshsunkur12@gmail.com");
                    mail.To.Add(email);
                    mail.Subject = "Mass Request from NGO";
                    mail.Body = message;

                    smtp.Send(mail);
                }
            }
            catch (Exception ex)
            {
                throw new Exception($"Failed to send email to {email}: {ex.Message}");
            }
        }


        // Method to save the message into the database
        private void SaveMessageToDatabase(string email, string message)
        {
            string query = "INSERT INTO SentMessages (Email, Message, SentDate) VALUES (@Email, @Message, @SentDate)";
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("@Email", email),
                new SqlParameter("@Message", message),
                new SqlParameter("@SentDate", DateTime.Now)
            };

            DatabaseHelper.ExecuteNonQuery(query, parameters);
        }
    }
}
