using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace HuLiPTJob
{
    public partial class RegistrationResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (AddToDataBase())
                Response.Write("添加成功");
            else
                Response.Write("添加失败");
        }
        private bool AddToDataBase()
        {
            string username = this.Request.QueryString["userid"];
            string passwd = this.Request.QueryString["passwdid"];
            string dbsource = @"Data Source=DAJU\SQLEXPRESS;Initial Catalog=HuLiPTJob;Integrated Security=True";
            SqlConnection conn = new SqlConnection(dbsource);
            conn.Open();
            string addApply = "INSERT INTO TableUserRegistraionApply(ApplyUserName,ApplyPassword) " +
              "VALUES('" + username + "','" + passwd + "')";
            SqlCommand cmdaddApply = new SqlCommand(addApply, conn);
            cmdaddApply.ExecuteNonQuery();
            conn.Close();
            return true;
        }

    }
}