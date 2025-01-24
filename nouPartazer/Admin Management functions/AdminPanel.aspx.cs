using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nouPartazer.Admin_Management_functions
{
    public partial class AdminPanel : System.Web.UI.Page
    {
        protected void btnApproveNGO_Click(object sender, EventArgs e)
        {
            Response.Redirect("ApproveNGOs.aspx"); // Redirecting to a page to approve NGOs
        }

        protected void btnManageItems_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageItems.aspx"); // Redirecting to a page to manage items
        }

        protected void btnAnalytics_Click(object sender, EventArgs e)
        {
            Response.Redirect("Analytics.aspx"); // Redirecting to an analytics overview page
        }
    }
}