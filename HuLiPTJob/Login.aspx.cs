using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HuLiPTJob.HuLiPTJobPublishCSS
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            bool Authenticated = false;
            Authenticated = SiteLevelCustomAuthenticationMethod(Login1.UserName, Login1.Password);
            e.Authenticated = Authenticated;
            if (Authenticated == true)
            {
                Response.Redirect("index.aspx");
            }
        }

        private bool SiteLevelCustomAuthenticationMethod(string usern,string passw)
        {
            bool boolReturnValue = false;
            // Insert code that implements a site-specific custom 
            // authentication method here.
            // This example implementation always returns false.
            string source = @"Data Source=DAJU\SQLEXPRESS;Initial Catalog=HuLiPTJob;Integrated Security=True";
            SqlConnection conn = new SqlConnection(source);
            conn.Open();
            string select = "SELECT ApplyUserName,ApplyPassword FROM TableUserRegistraionApply";
            SqlCommand cmd = new SqlCommand(select,conn);
            SqlDataReader sqlReader = cmd.ExecuteReader();
            while (sqlReader.Read())
            {
                if (sqlReader.GetString(0) == usern && sqlReader.GetString(1) == passw)
                {
                    boolReturnValue = true;
                }
            }
            conn.Close();
            return boolReturnValue;
        }
    }
}