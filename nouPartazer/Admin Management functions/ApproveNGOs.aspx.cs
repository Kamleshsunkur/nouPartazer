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
            using (SqlConnection conn = new SqlConnection("your_connection_string"))
            {
                SqlCommand cmd = new SqlCommand("SELECT NGOID, NGOName, Email FROM NGOs WHERE IsApproved = 0", conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                conn.Open();
                da.Fill(dt);
                gridNGOs.DataSource = dt;
                gridNGOs.DataBind();
                conn.Close();
            }
        }

        protected void gridNGOs_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int ngoId = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "Approve")
            {
                using (SqlConnection conn = new SqlConnection("your_connection_string"))
                {
                    SqlCommand cmd = new SqlCommand("UPDATE NGOs SET IsApproved = 1 WHERE NGOID = @NGOID", conn);
                    cmd.Parameters.AddWithValue("@NGOID", ngoId);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
                BindGrid(); // Rebind the grid to reflect changes
            }
            else if (e.CommandName == "Reject")
            {
                using (SqlConnection conn = new SqlConnection("your_connection_string"))
                {
                    SqlCommand cmd = new SqlCommand("DELETE FROM NGOs WHERE NGOID = @NGOID", conn);
                    cmd.Parameters.AddWithValue("@NGOID", ngoId);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
                BindGrid(); // Rebind the grid to reflect changes
            }
        }
    }
}