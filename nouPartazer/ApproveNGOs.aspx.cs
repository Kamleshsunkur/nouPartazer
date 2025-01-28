using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using nouPartazer.Helpers; // Import the DatabaseHelper namespace

namespace nouPartazer.Admin_Management_functions
{
    public partial class ApproveNGOs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        private void BindGrid()
        {
            try
            {
                // Query to get NGOs awaiting approval
                string query = "SELECT NGOID, NGOName, Email FROM NGOs WHERE IsApproved = 0";

                // Execute the query and bind the result to the GridView
                DataTable dt = DatabaseHelper.ExecuteQuery(query, null);
                gridNGOs.DataSource = dt;
                gridNGOs.DataBind();
            }
            catch (Exception ex)
            {
                // Handle any errors
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", $"alert('An error occurred while loading the grid: {ex.Message}');", true);
            }
        }

        protected void gridNGOs_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                int ngoId = Convert.ToInt32(e.CommandArgument);

                if (e.CommandName == "Approve")
                {
                    // Approve the NGO by updating its status
                    string query = "UPDATE NGOs SET IsApproved = 1 WHERE NGOID = @NGOID";
                    SqlParameter[] parameters = new SqlParameter[]
                    {
                        new SqlParameter("@NGOID", ngoId)
                    };

                    DatabaseHelper.ExecuteNonQuery(query, parameters);

                    // Show success message
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('NGO approved successfully!');", true);
                }
                else if (e.CommandName == "Reject")
                {
                    // Reject the NGO by deleting it from the database
                    string query = "DELETE FROM NGOs WHERE NGOID = @NGOID";
                    SqlParameter[] parameters = new SqlParameter[]
                    {
                        new SqlParameter("@NGOID", ngoId)
                    };

                    DatabaseHelper.ExecuteNonQuery(query, parameters);

                    // Show success message
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('NGO rejected and removed successfully!');", true);
                }

                // Rebind the GridView to reflect changes
                BindGrid();
            }
            catch (Exception ex)
            {
                // Handle any errors
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", $"alert('An error occurred: {ex.Message}');", true);
            }
        }
    }
}
