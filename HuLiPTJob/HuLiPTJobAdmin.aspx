<%@ Page Title="" Language="C#" MasterPageFile="~/HuLiPTJobAdmin.Master" AutoEventWireup="true" CodeBehind="HuLiPTJobAdmin.aspx.cs" Inherits="HuLiPTJob.HuLiPTJobAdmin1" %>
<asp:Content ID="ContentCheckApply" ContentPlaceHolderID="ContentPlaceHolderCheckApply" runat="server">
    <asp:ListView ID="lstPTJobCheckApply" DataSourceID="SqlSrcHuLiPTJobApply"  OnItemCommand="PTJobListView__OnItemCommand" runat="server">
        <LayoutTemplate>
            <div class="HuLiPTJobAdmin_Right_Content_CheckApply_CheckItem">
                 <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
            </div>
            <div class="HuLiPTJobAdmin_Right_Content_CheckApply_PageIndex">
                <asp:DataPager ID="pg" PageSize="5" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ShowFirstPageButton="true" 
                            ShowPreviousPageButton="true" ShowNextPageButton="false" ShowLastPageButton="false"/>
                        <asp:NumericPagerField />
                        <asp:NextPreviousPagerField ShowFirstPageButton="false" 
                            ShowPreviousPageButton="false" ShowLastPageButton="true" ShowNextPageButton="true" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <ItemTemplate>
            <div class="HuLiPTJobAdmin_Right_Content_CheckApply_itemDiv">
                <div class="HuLiPTJobAdmin_Right_Content_CheckApplyitemDiv_logo">logo</div>
                <div id="HuLiPTJobAdmin_Right_Content_CheckApply_itemDiv_logoRight">
                    兼职名称：<%# Eval("PTJobName")%><br />
                    雇主姓名：<%# Eval("EmployerName")%><br />
                    手机号码：<%# Eval("EmployerPhoneNumber")%><br />
                    兼职时间：<%# Eval("PTJobPeriod")%><br />
                    兼职地点：<%# Eval("PTJobPlace")%><br />
                    兼职描述：<%# Eval("PTJobDescription")%><br />
                </div>                
                <div class="HuLiPTJobAdmin_Right_Content_CheckApply_Control">

                    <asp:HiddenField ID="hfPTJobName" Value='<%# Eval("PTJobName")%>' runat="server" />
                    <asp:HiddenField ID="hfEmployerName" Value='<%# Eval("EmployerName")%>' runat="server" />
                    <asp:HiddenField ID="hfEmployerPhoneNumber" Value='<%# Eval("EmployerPhoneNumber")%>' runat="server" />
                    <asp:HiddenField ID="hfPTJobPeriod" Value='<%# Eval("PTJobPeriod")%>' runat="server" />
                    <asp:HiddenField ID="hfPTJobPlace" Value='<%# Eval("PTJobPlace")%>' runat="server" />
                    <asp:HiddenField ID="hfPTJobDescription" Value='<%# Eval("PTJobDescription")%>' runat="server" />              
                    <asp:Button ID="btnAgree" Width="80px" Height="30px" Text="批准" OnClick="btnAgree_Click" CommandName="AddToPTJobInfo" runat="server" />
                    <asp:Button ID="btnDisAgree" Width="80px" Height="30px" Text="退回" OnClick="btnDisagree_Click" runat="server" />
                    <asp:TextBox ID="test" runat="server"></asp:TextBox>
                    <asp:TextBox ID="testtest" runat="server"></asp:TextBox>

                </div>
            </div>
        </ItemTemplate>
    </asp:ListView>
<asp:SqlDataSource ID="SqlSrcHuLiPTJobApply" runat="server" ConnectionString="Data Source=DAJU\SQLEXPRESS;Initial Catalog=HuLiPTJob;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Id], [PTJobName], [EmployerName], [PTJobDescription], [EmployerPhoneNumber], [PTJobPlace], [PTJobPeriod] FROM [TableUserPublishPTJobApply]"></asp:SqlDataSource>
</asp:Content>
