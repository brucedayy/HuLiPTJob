using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HuLiPTJob
{
    public partial class HuLiPTJobPublishPTJob1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {          
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string dataConS = @"Data Source=DAJU\SQLEXPRESS;Initial Catalog=HuLiPTJob;Integrated Security=True";
            string ptjobName = txbPTJobName.Text,
                employerName = txbEmployerName.Text,
                phoneNumber = txbPhoneNumber.Text,
                ptjobDesc = txbPTJobDesc.Text,
                ptjobPlace = txbPTJobPlace.Text,
                ptjobTime = txbPTJObTime.Text;
            SqlConnection conn = new SqlConnection(dataConS);
            conn.Open();
            string addApply = "INSERT INTO TableUserPublishPTJobApply(PTJobName,EmployerName,EmployerPhoneNumber,PTJobDescription,PTJobPlace,PTJobPeriod) " +
                "VALUES('" + ptjobName + "','" + employerName + "','" + phoneNumber + "','" + ptjobDesc + "','" + ptjobPlace + "','" + ptjobTime + "')";
            SqlCommand cmdaddApply=new SqlCommand(addApply,conn);
            cmdaddApply.ExecuteNonQuery();
            conn.Close();
        }
    }
}