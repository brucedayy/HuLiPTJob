using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace HuLiPTJob
{
    /// <summary>
    /// VariableTest 的摘要说明
    /// </summary>
    public class VariableTest : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string username = context.Request.Form["username"];
            string passwd = context.Request.Form["passwd"];
            if (CheckLogin(username, passwd))
            {
                context.Response.Write("登陆成功");
                HttpContext.Current.Response.Redirect("index.html");
            }
            else
                context.Response.Write("登陆失败");
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
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}