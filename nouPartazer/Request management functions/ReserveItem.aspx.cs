using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nouPartazer.Request_management_functions
{
    public partial class ReserveItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HiddenItemId.Value = Request.QueryString["itemId"]; // Capture the item ID
            }

        }
        protected void btnSendRequest_Click(object sender, EventArgs e)
        {
            int itemId = Convert.ToInt32(HiddenItemId.Value);
            int quantity = Convert.ToInt32(txtQuantity.Text);
            string size = txtSize.Text;
            string ageRange = txtAgeRange.Text;
            string ngoUsername = Session["Username"].ToString(); // Assuming NGO username is stored in session

            using (SqlConnection conn = new SqlConnection("your_connection_string"))
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO Reservations (ItemID, Quantity, Size, AgeRange, NGOUsername) VALUES (@ItemID, @Quantity, @Size, @AgeRange, @Username)", conn);
                cmd.Parameters.AddWithValue("@ItemID", itemId);
                cmd.Parameters.AddWithValue("@Quantity", quantity);
                cmd.Parameters.AddWithValue("@Size", size);
                cmd.Parameters.AddWithValue("@AgeRange", ageRange);
                cmd.Parameters.AddWithValue("@Username", ngoUsername);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }

            // Optionally notify the donor of the request via email (implementation not shown)

            Response.Redirect("ViewItems.aspx");
        }
    }
}