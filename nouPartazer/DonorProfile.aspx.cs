using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nouPartazer.user_registration_MF
{
    public partial class DonorProfile : System.Web.UI.Page
    {
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string newPassword = txtPassword.Text;

            using (SqlConnection conn = new SqlConnection("your_connection_string"))
            {
                SqlCommand cmd = new SqlCommand("UPDATE Donors SET Email = @Email, Password = @Password WHERE Username = @Username", conn);
               // cmd.Parameters.AddWithValue("@" 
                     cmd.Parameters.AddWithValue("@Email", email);
        
                cmd.Parameters.AddWithValue("@Username", Session["Username"]); // Assuming the username is stored in session.

                // Hash the new password in real applications
                if (!string.IsNullOrEmpty(newPassword))
                {
                    cmd.Parameters.AddWithValue("@Password", newPassword); // Hash the password before storing
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Password", DBNull.Value); // If no new password, do not update it
                }

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }

            Response.Redirect("Index.aspx");
        }


    }


}
