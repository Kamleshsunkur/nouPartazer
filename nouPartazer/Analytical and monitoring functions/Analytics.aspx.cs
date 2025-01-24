using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nouPartazer.Analytical_and_monitoring_functions
{
    public partial class Analytics : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //LoadStatistics();
            }
        }
        //private void LoadStatistics()
        //{
        //    using (SqlConnection conn = new SqlConnection("your_connection_string"))
        //    {
        //        conn.Open();

                // Example statistics
                //SqlCommand cmdItems = new SqlCommand("SELECT COUNT(*) FROM. " 
        //      public void LoadStatistics()
        //        {
        //            int itemCount = 0;
        //            int donorCount = 0;
        //            int ngoCount = 0;

        //            using (SqlConnection conn = new SqlConnection("your_connection_string"))
        //            {
        //                conn.Open();

        //                // Get the total number of items
        //                SqlCommand cmdItems = new SqlCommand("SELECT COUNT(*) FROM DonatedItems", conn);
        //                itemCount = (int)cmdItems.ExecuteScalar();

        //                // Get the total number of donors
        //                SqlCommand cmdDonors = new SqlCommand("SELECT COUNT(*) FROM Donors", conn);
        //                donorCount = (int)cmdDonors.ExecuteScalar();

        //                // Get the total number of NGOs
        //                SqlCommand cmdNGOs = new SqlCommand("SELECT COUNT(*) FROM NGOs WHERE IsApproved = 1", conn);
        //                ngoCount = (int)cmdNGOs.ExecuteScalar();
        //            }

        //            // Display the statistics
        //            lblStats.Text = $"Total Items: {itemCount} <br /> Total Donors: {donorCount} <br /> Total Registered NGOs: {ngoCount}";
        //        }
        //    }
        //}
    }
}
