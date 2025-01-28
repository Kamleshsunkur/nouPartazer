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
    public partial class MangeCategories : System.Web.UI.Page
    {
        protected void btnAddCategory_Click(object sender, EventArgs e)
        {
            string categoryName = txtCategoryName.Text;

            using (SqlConnection conn = new SqlConnection("your_connection_string"))
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO Categories (CategoryName) VALUES (@CategoryName)", conn);
                cmd.Parameters.AddWithValue("@CategoryName", categoryName);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }

            // Clear input and rebind grid
            txtCategoryName.Text = string.Empty;
            BindGrid();
        }

        private void BindGrid()
        {
            using (SqlConnection conn = new SqlConnection("your_connection_string"))
            {
                SqlCommand cmd = new SqlCommand("SELECT CategoryID, CategoryName FROM Categories", conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                conn.Open();
                da.Fill(dt);
                gridCategories.DataSource = dt;
                gridCategories.DataBind();
                conn.Close();
            }
        }
    }
}