using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nouPartazer.user_registration_MF
{
    public partial class PostItem : System.Web.UI.Page
    {
        protected void btnPostItem_Click(object sender, EventArgs e)
        {
            string itemName = txtItemName.Text;
            string description = txtDescription.Text;
            string category = ddlCategory.SelectedValue;
            string username = Session["Username"].ToString(); // Assuming username is stored in session

            using (SqlConnection conn = new SqlConnection("your_connection_string"))
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO DonatedItems (ItemName, Description, Category, DonorUsername) VALUES (@ItemName, @Description, @Category, @Username)", conn);
                cmd.Parameters.AddWithValue("@ItemName", itemName);
                cmd.Parameters.AddWithValue("@Description", description);
                cmd.Parameters.AddWithValue("@Category", category);
                cmd.Parameters.AddWithValue("@Username", username);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }

            Response.Redirect("Index.aspx");
        }
    }
}