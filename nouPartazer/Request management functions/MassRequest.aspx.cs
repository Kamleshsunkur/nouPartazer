using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nouPartazer.NGO_functions
{
    public partial class MassRequest : System.Web.UI.Page
    {
        protected void btnSendMassRequest_Click(object sender, EventArgs e)
        {
            string message = txtMessage.Text;

            // Sending this message to all donors would require sending emails
            // Using a simplified example, in reality this would involve an email sending mechanism
            using (SqlConnection conn = new SqlConnection("your_connection_string"))
            {
                SqlCommand cmd = new SqlCommand("SELECT Email FROM Donors", conn);

                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    string email = reader["Email"].ToString();
                    // Call method to send email (implement your own email sending method)
                    // SendEmail(email, message);
                }
                conn.Close();
            }

            Response.Redirect("Index.aspx");

        }
    }
}