<%@ Page Title="" Language="C#" MasterPageFile="~/HuLiPTJob.Master" AutoEventWireup="true" CodeBehind="HuLiPTJobSearchPTJob.aspx.cs" Inherits="HuLiPTJob.HuLiPTJobSearchPTJob" %>

<asp:Content ID="ContentPTJobInfo" ContentPlaceHolderID="ContentPlaceHolder_LeftArea" runat="server">
    <form id="form1" runat="server">
    <asp:ListView ID="groupPlaceholder" DataSourceID="SqlSrcHuLiPTJobInfo" runat="server">
        <LayoutTemplate>
            <div class="Master_HuLiPTJob_HomePage_ShowContent_PTJobInfo">
                <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
            </div>
            <div class="Master_HuLiPTJob_HomePage_ShowContent_PTJobInfo_PageDiv">
                <asp:DataPager ID="pg" PageSize="10" runat="server">
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
            <div class="Master_HuLiPTJob_HomePage_ShowContent_PTJobInfo_itemDiv">
                <div class="Master_HuLiPTJob_HomePage_ShowContent_PTJobInfo_itemDiv_logo">logo</div>
                <div class="Master_HuLiPTJob_HomePage_ShowContent_PTJobInfo_itemDiv_logoRight">
                    <span class="span_PTJobName">兼职名称：<%# Eval("PTJobName")%></span><span class="span_PTJobDescription">简要描述：<%# Eval("PTJobDescription")%></span><span class="span_PTJobContact"><span class="span_PTJobContact_name"><img src="logo/EmployerLogo.png" style="width:20px;height:20px;float:left"/><%# Eval("EmployerName")%></span><span class="span_PTJobContact_phone"><img src="logo/PhoneNumberlogo.png" style="width:20px;height:20px;float:left"/><%# Eval("EmployerPhoneNumber")%></span><span class="span_PTJobContact_address"><img src="logo/Addresslogo.png" style="width:20px;height:20px;float:left"/><%# Eval("PTJobPlace")%></span></span></div>
            </div>
        </ItemTemplate>
        <EmptyDataTemplate>
            No records found
        </EmptyDataTemplate>
    </asp:ListView>                      
        <asp:SqlDataSource ID="SqlSrcHuLiPTJobInfo" runat="server" ConnectionString="Data Source=DAJU\SQLEXPRESS;Initial Catalog=HuLiPTJob;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Id], [PTJobName], [EmployerName], [EmployerPhoneNumber], [PTJobPlace], [PTJobDescription], [PTJobPeriod] FROM [TablePTJobInfo]"></asp:SqlDataSource>
</form>
</asp:Content>
<asp:Content ID="ContentTips" ContentPlaceHolderID="ContentPlaceHolder_RightArea" runat="server">

</asp:Content>
