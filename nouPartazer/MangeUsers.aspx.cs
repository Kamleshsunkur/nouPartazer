using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nouPartazer.Helpers;

namespace nouPartazer.Admin_Management_functions
{
    public partial class MangeUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadUsers();
            }
        }

        // Load user accounts into the GridView
        private void LoadUsers()
        {
            string query = "SELECT UserID, Username, CASE WHEN IsFrozen = 1 THEN 'Frozen' ELSE 'Active' END AS Status FROM Users";
            DataTable dt = DatabaseHelper.ExecuteQuery(query, null);

            gridManageUsers.DataSource = dt;
            gridManageUsers.DataBind();
        }

        // Handle freeze and unfreeze commands
        protected void gridManageUsers_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int userId = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "Freeze")
            {
                UpdateUserStatus(userId, true); // Freeze user
            }
            else if (e.CommandName == "Unfreeze")
            {
                UpdateUserStatus(userId, false); // Unfreeze user
            }
        }

        // Update user status in the database
        private void UpdateUserStatus(int userId, bool freeze)
        {
            string query = "UPDATE Users SET IsFrozen = @IsFrozen WHERE UserID = @UserID";
            SqlParameter[] parameters = {
                new SqlParameter("@IsFrozen", freeze ? 1 : 0),
                new SqlParameter("@UserID", userId)
            };

            int rowsAffected = DatabaseHelper.ExecuteNonQuery(query, parameters);

            if (rowsAffected > 0)
            {
                string action = freeze ? "frozen" : "unfrozen";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", $"alert('User successfully {action}!');", true);
                LoadUsers(); // Refresh the GridView
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Failed to update user status. Please try again.');", true);
            }
        }
    }
}