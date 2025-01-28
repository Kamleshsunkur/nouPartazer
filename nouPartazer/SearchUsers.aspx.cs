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
    public partial class SearchUsers : System.Web.UI.Page
    {
        protected void btnSearchUser_Click(object sender, EventArgs e)
        {
            string searchTerm = txtSearchUser.Text;

            using (SqlConnection conn = new SqlConnection("your_connection_string"))
            {
                SqlCommand cmd = new SqlCommand("SELECT UserID, Username, Email FROM Users WHERE Username LIKE @SearchTerm", conn);
                cmd.Parameters.AddWithValue("@SearchTerm", "%" + searchTerm + "%");

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                conn.Open();
                da.Fill(dt);
                gridUsers.DataSource = dt;
                gridUsers.DataBind();
                conn.Close();
            }
        }
    }
}