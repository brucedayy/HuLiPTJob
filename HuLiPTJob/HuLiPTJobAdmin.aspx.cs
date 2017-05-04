using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HuLiPTJob
{
    public partial class HuLiPTJobAdmin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PTJobListView__OnItemCommand(object sender,ListViewCommandEventArgs e)
        {
            if (String.Equals(e.CommandName, "AddToPTJobInfo"))
            {
                HiddenField ptjobNameCon = (HiddenField)e.Item.FindControl("hfPTJobName");
                HiddenField employerNameCon = (HiddenField)e.Item.FindControl("hfEmployerName");
                HiddenField phoneNumberCon = (HiddenField)e.Item.FindControl("hfEmployerPhoneNumber");
                HiddenField ptjobPlaceCon = (HiddenField)e.Item.FindControl("hfPTJobPlace");
                HiddenField ptjobTimeCon = (HiddenField)e.Item.FindControl("hfPTJobPeriod");
                HiddenField ptjobDescCon = (HiddenField)e.Item.FindControl("hfPTJobDescription");

                string ptjobName = ptjobNameCon.Value,
                    employerName = employerNameCon.Value,
                    phoneNumber = phoneNumberCon.Value,
                    ptjobDesc = ptjobDescCon.Value,
                    ptjobPlace = ptjobPlaceCon.Value,
                    ptjobTime = ptjobTimeCon.Value;

                //Addition Test
                string dataConS = @"Data Source=DAJU\SQLEXPRESS;Initial Catalog=HuLiPTJob;Integrated Security=True";

                SqlConnection conn = new SqlConnection(dataConS);
                conn.Open();
                string addApply = "INSERT INTO TablePTJobInfo(PTJobName,EmployerName,EmployerPhoneNumber,PTJobDescription,PTJobPlace,PTJobPeriod) " +
                    "VALUES('" + ptjobName + "','" + employerName + "','" + phoneNumber + "','" + ptjobDesc + "','" + ptjobPlace + "','" + ptjobTime + "')";
                SqlCommand cmdaddApply = new SqlCommand(addApply, conn);
                cmdaddApply.ExecuteNonQuery();

            }
        }

        /*protected void EmployeesListView_OnItemCommand(object sender, ListViewCommandEventArgs e)
        {
            HiddenField ptjobNameCon = (HiddenField)e.Item.FindControl("hfPTJobName");
            HiddenField employerNameCon = (HiddenField)e.Item.FindControl("hfEmployerName");
            HiddenField phoneNumberCon = (HiddenField)e.Item.FindControl("hfEmployerPhoneNumber");
            HiddenField ptjobPlaceCon = (HiddenField)e.Item.FindControl("PTJobPlace");
            HiddenField ptjobTimeCon = (HiddenField)e.Item.FindControl("PTJobPeriod");
            HiddenField ptjobDescCon = (HiddenField)e.Item.FindControl("PTJobDescription");

            string ptjobName = ptjobNameCon.Value.ToString(),
                employerName = employerNameCon.Value.ToString(),
                phoneNumber = phoneNumberCon.Value.ToString(),
                ptjobDesc = ptjobDescCon.Value.ToString(),
                ptjobPlace = ptjobPlaceCon.Value.ToString(),
                ptjobTime = ptjobTimeCon.Value.ToString();

            //Addition Test
            string dataConS = @"Data Source=DAJU\SQLEXPRESS;Initial Catalog=HuLiPTJob;Integrated Security=True";

            SqlConnection conn = new SqlConnection(dataConS);
            conn.Open();
            string addApply = "INSERT INTO TablePTJobInfo(PTJobName,EmployerName,EmployerPhoneNumber,PTJobDescription,PTJobPlace,PTJobPeriod) " +
                "VALUES('" + ptjobName + "','" + employerName + "','" + phoneNumber + "','" + ptjobDesc + "','" + ptjobPlace + "','" + ptjobTime + "')";
            SqlCommand cmdaddApply = new SqlCommand(addApply, conn);
            cmdaddApply.ExecuteNonQuery();
        }*/
     
        protected void btnAgree_Click(object sender, EventArgs e)
        {
           // Control FbtnAgree = lstPTJobCheckApply.Items[0].FindControl("btnAgree");
            //Button fbtnAgree = (Button)FbtnAgree;
            //fbtnAgree.Text = "已批准";
            //fbtnAgree.Enabled = false;
            Button FbtnAgree = (Button)sender;
            FbtnAgree.Text = "已批准";
            FbtnAgree.Enabled = false;
            ListViewDataItem gvr = (ListViewDataItem)FbtnAgree.NamingContainer;
            TextBox txb =(TextBox)gvr.FindControl("test");
            txb.Text = "批准成功";
            //GetNamingContainer            
            //     

        }

        protected void btnDisagree_Click(object sender, EventArgs e)
        {
            Button FbtnDisagree = (Button)sender;
            FbtnDisagree.Text = "已退回";
            FbtnDisagree.Enabled = false;
            ListViewDataItem gvr = (ListViewDataItem)FbtnDisagree.NamingContainer;
            TextBox txb = (TextBox)gvr.FindControl("testtest");
            txb.Text = "退回成功";
        }

    }
}