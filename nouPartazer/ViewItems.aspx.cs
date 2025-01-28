using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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

        private void BindGrid()
        {
            //using (SqlConnection conn = new SqlConnection("your_connection" 
           // string connectionString = "your_connection_string";
           // {
              //  SqlCommand cmd = new SqlCommand("SELECT ItemID, ItemName, Description FROM DonatedItems WHERE IsAvailable = 1", conn);
               // SqlDataAdapter da = new SqlDataAdapter(cmd);
               // DataTable dt = new DataTable();
               // conn.Open();
                //da.Fill(dt);
              //  gridItems.DataSource = dt;
               // gridItems.DataBind();
               // conn.Close();
          //  }
        }

        protected void gridItems_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Reserve")
            {
                int itemId = Convert.ToInt32(e.CommandArgument);
                // Redirect to reservation page or open a modal for more details
                Response.Redirect($"ReserveItem.aspx?itemId={itemId}");
            }
        }
    }

}