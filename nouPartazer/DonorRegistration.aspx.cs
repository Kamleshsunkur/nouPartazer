using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//namespace nouPartazer
//{
//    public partial class DonorRegistration : System.Web.UI.Page
//    {
//        //protected void btnRegister_Click(object sender, EventArgs e)
//        //{
//        //    //string username = txtUsername.Text;
//        //    //string email = txtEmail.Text;
//        //    //string password = txtPassword.Text;

//        //    // Database logic here (ensure to hash passwords before storing)
//        //    using (SqlConnection conn = new SqlConnection("your_connection_string"))
//        //    {
//        //        SqlCommand cmd = new SqlCommand("INSERT INTO Donors (Username, Email, Password) VALUES (@Username, @Email, @Password)", conn);
//        //        cmd.Parameters.AddWithValue("@Username", username);
//        //        cmd.Parameters.AddWithValue("@Email", email);
//        //        cmd.Parameters.AddWithValue("@Password", password); // hash the password in a real application

//        //        conn.Open();
//        //        cmd.ExecuteNonQuery();
//        //        conn.Close();

//        //    }
//        //    Response.Redirect("Index.aspx");

//        //}
//    }
//}


namespace nouPartazer
{
    public partial class DonorRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}