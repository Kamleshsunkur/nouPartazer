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
    public partial class ViewAllUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindAllUsersGrid();
            }
        }

        private void BindAllUsersGrid()
        {
            using (SqlConnection conn = new SqlConnection("your_connection_string"))
            {
                SqlCommand cmd = new SqlCommand("SELECT UserID, Username, Email FROM Users", conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                conn.Open();
                da.Fill(dt);
                gridAllUsers.DataSource = dt;
                gridAllUsers.DataBind();
                conn.Close();
            }
        }
    }
}