using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HuLiPTJob_HomePage
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {           
            string username = Request.Form["username"];
            string passwd = Request.Form["passwd"];
            if (CheckLogin(username, passwd))
            {               
                HttpContext.Current.Response.Redirect("index.aspx");
            }                  
        }
        public bool CheckLogin(string usern, string passw)
        {
            string source = @"Data Source=DAJU\SQLEXPRESS;Initial Catalog=HuLiPTJob;Integrated Security=True";
            SqlConnection conn = new SqlConnection(source);
            conn.Open();
            string select = "SELECT ApplyUserName,ApplyPassword FROM TableUserRegistraionApply";
            SqlCommand cmd = new SqlCommand(select, conn);
            SqlDataReader sqlReader = cmd.ExecuteReader();
            while (sqlReader.Read())
            {
                if (sqlReader.GetString(0) == usern && sqlReader.GetString(1) == passw)
                {
                    conn.Close();
                    return true;
                }
            }
            conn.Close();
            return false;
        }

        protected void btnReg_Click(object sender, EventArgs e)
        {           
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {            
        }
    }
}