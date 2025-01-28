using nouPartazer.Helpers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nouPartazer.user_registration_MF
{
    public partial class EditItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int itemId = Convert.ToInt32(Request.QueryString["ItemID"]);
                HiddenItemId.Value = itemId.ToString();
                LoadCategories();
                LoadItemDetails(itemId);
            }
        }

        // Load item details into the form
        private void LoadItemDetails(int itemId)
        {
            string query = "SELECT ItemName, Description, CategoryID FROM DonatedItem WHERE ItemID = @ItemID";
            SqlParameter[] parameters = { new SqlParameter("@ItemID", itemId) };

            DataTable dt = DatabaseHelper.ExecuteQuery(query, parameters);

            if (dt.Rows.Count > 0)
            {
                txtItemName.Text = dt.Rows[0]["ItemName"].ToString();
                txtDescription.Text = dt.Rows[0]["Description"].ToString();
                ddlCategory.SelectedValue = dt.Rows[0]["CategoryID"].ToString();
            }
        }

        // Load categories into the dropdown
        private void LoadCategories()
        {
            string query = "SELECT CategoryID, CategoryName FROM Categories";
            DataTable dt = DatabaseHelper.ExecuteQuery(query, null);

            ddlCategory.DataSource = dt;
            ddlCategory.DataTextField = "CategoryName";
            ddlCategory.DataValueField = "CategoryID";
            ddlCategory.DataBind();
        }

        // Update item details
        protected void btnUpdateItem_Click(object sender, EventArgs e)
        {
            int itemId = Convert.ToInt32(HiddenItemId.Value);
            string itemName = txtItemName.Text.Trim();
            string description = txtDescription.Text.Trim();
            int categoryId = Convert.ToInt32(ddlCategory.SelectedValue);

            string query = "UPDATE DonatedItem SET ItemName = @ItemName, Description = @Description, CategoryID = @CategoryID WHERE ItemID = @ItemID";
            SqlParameter[] parameters = {
                new SqlParameter("@ItemName", itemName),
                new SqlParameter("@Description", description),
                new SqlParameter("@CategoryID", categoryId),
                new SqlParameter("@ItemID", itemId)
            };

            int rowsAffected = DatabaseHelper.ExecuteNonQuery(query, parameters);

            if (rowsAffected > 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Item updated successfully!');", true);
                Response.Redirect("ManageItems.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Failed to update item. Please try again.');", true);
            }
        }
    }
}