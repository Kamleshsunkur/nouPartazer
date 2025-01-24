using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nouPartazer.Admin_Management_functions
{
    public partial class MangeUsers : System.Web.UI.Page
    {
        protected void gridManageUsers_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int userId = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "Freeze")
            {
                using (SqlConnection conn = new SqlConnection("your_connection_string"))
                {
                    SqlCommand cmd = new SqlCommand("UPDATE Users SET IsFrozen = 1 WHERE UserID = @UserID", conn);
                    cmd.Parameters.AddWithValue("@UserID", userId);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }

                // Optionally, you can re-bind the grid to show the updated status
                BindUsersGrid();
            }
            else if (e.CommandName == "Unfreeze")
            {
                using (SqlConnection conn = new SqlConnection("your_connection_string"))
                {
                    SqlCommand cmd = new SqlCommand("UPDATE Users SET IsFrozen = 0 WHERE UserID = @UserID", conn);
                    cmd.Parameters.AddWithValue("@UserID", userId);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }

                // Re-bind the grid to update the changes
                BindUsersGrid();
            }
        }

        // Method to bind users to the grid
        private void BindUsersGrid()
        {
            using (SqlConnection conn = new SqlConnection("your_connection_string"))
            {
                SqlCommand cmd = new SqlCommand("SELECT UserID, Username, IsFrozen FROM Users", conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                conn.Open();
                da.Fill(dt);
                gridManageUsers.DataSource = dt;
                gridManageUsers.DataBind();
                conn.Close();
            }
        }
    }
}