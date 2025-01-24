using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nouPartazer.Request_management_functions
{
    public partial class ViewDonorRequests : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRequests();
            }
        }
        private void BindRequests()
        {
            using (SqlConnection conn = new SqlConnection("your_connection_string"))
            {
                SqlCommand cmd = new SqlCommand("SELECT RequestID, NGOName, ItemRequested FROM Requests WHERE DonorUsername = @Username", conn);
                cmd.Parameters.AddWithValue("@Username", Session["Username"]);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                conn.Open();
                da.Fill(dt);
                gridDonorRequests.DataSource = dt;
                gridDonorRequests.DataBind();
                conn.Close();
            }
        }

        protected void gridDonorRequests_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int requestId = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "Accept")
            {  // Logic to accept the request (update the request status in the database)
                using (SqlConnection conn = new SqlConnection("your_connection_string"))
                {
                    SqlCommand cmd = new SqlCommand("UPDATE Requests SET Status = 'Accepted' WHERE RequestID = @RequestID", conn);
                    cmd.Parameters.AddWithValue("@RequestID", requestId);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }

                Response.Redirect("ViewDonorRequests.aspx"); // Refresh the list of requests
            }
            else if (e.CommandName == "Reject")
            {
                // Logic to reject the request
                using (SqlConnection conn = new SqlConnection("your_connection_string"))
                {
                    SqlCommand cmd = new SqlCommand("UPDATE Requests SET Status = 'Rejected' WHERE RequestID = @RequestID", conn);
                    cmd.Parameters.AddWithValue("@RequestID", requestId);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }

                Response.Redirect("ViewDonorRequests.aspx"); // Refresh the list of requests
            }
        }
    }
}