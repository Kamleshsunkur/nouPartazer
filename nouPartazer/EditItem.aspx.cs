using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nouPartazer.user_registration_MF
{
    public partial class EditItem : System.Web.UI.Page
    {
        protected void btnUpdateItem_Click(object sender, EventArgs e)
        {
            int itemId = Convert.ToInt32(HiddenItemId.Value);
            string itemName = txtItemName.Text;
            string description = txtDescription.Text;
            string category = ddlCategory.SelectedValue;

            using (SqlConnection conn = new SqlConnection("your_connection_string"))
            {
                SqlCommand cmd = new SqlCommand("UPDATE DonatedItems SET ItemName = @ItemName, Description = @Description, Category = @Category WHERE ItemID = @ItemID", conn);
                cmd.Parameters.AddWithValue("@ItemName", itemName);
                cmd.Parameters.AddWithValue("@Description", description);
                cmd.Parameters.AddWithValue("@Category", category);
                cmd.Parameters.AddWithValue("@ItemID", itemId);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }

            Response.Redirect("ViewItems.aspx");
        }
    }
}