using System;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace nouPartazer.NGO_functions
{
    public partial class ViewItems : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        // Method to bind data to the GridView
        private void BindGrid()
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString))
            {
                string query = "SELECT ItemName, Description, ImagePath FROM Items";
                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();

                SqlDataReader reader = cmd.ExecuteReader();
                gridItems.DataSource = reader;
                gridItems.DataBind();
            }
        }

        // Method to handle item upload
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (fileUploadControl.HasFile)
            {
                try
                {
                    // Save the file to the UploadedImages folder
                    string filename = Path.GetFileName(fileUploadControl.FileName);
                    string filePath = "~/UploadedImages/" + filename;
                    string serverPath = Server.MapPath(filePath);
                    fileUploadControl.SaveAs(serverPath);

                    // Save item details to the database
                    string itemName = txtItemName.Text.Trim();
                    string description = txtDescription.Text.Trim();

                    using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString))
                    {
                        string query = "INSERT INTO Items (ItemName, Description, ImagePath) VALUES (@ItemName, @Description, @ImagePath)";
                        SqlCommand cmd = new SqlCommand(query, conn);
                        cmd.Parameters.AddWithValue("@ItemName", itemName);
                        cmd.Parameters.AddWithValue("@Description", description);
                        cmd.Parameters.AddWithValue("@ImagePath", filePath);

                        conn.Open();
                        cmd.ExecuteNonQuery();
                    }

                    lblMessage.Text = "Item added successfully!";
                    lblMessage.ForeColor = System.Drawing.Color.Green;

                    // Refresh the GridView
                    BindGrid();
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Error: " + ex.Message;
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                lblMessage.Text = "Please select a file to upload.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}
