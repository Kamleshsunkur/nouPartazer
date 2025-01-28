using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace nouPartazer.Analytical_and_monitoring_functions
{
    public partial class Analytics : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadItems();
            }
        }

        private void LoadItems()
        {
            // Connection string for your database
            string connectionString = "Data Source=DESKTOP-O8M3F3T\\MSSQLSERVER1;Initial Catalog=NouPartazerDB;Integrated Security=True";

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    string query = "SELECT ItemName, Description, ImagePath FROM Items"; // Adjust table name if different
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        conn.Open();
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);

                        // Bind the data to the GridView
                        gridItems.DataSource = dt;
                        gridItems.DataBind();
                    }
                }
            }
            catch (Exception ex)
            {
                // Log the error or display a friendly message
               
            }
        }
    }
}
