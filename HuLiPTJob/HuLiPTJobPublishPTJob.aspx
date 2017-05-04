<%@ Page Title="" Language="C#" MasterPageFile="~/HuLiPTJobPublishPTJob.Master" AutoEventWireup="true" CodeBehind="HuLiPTJobPublishPTJob.aspx.cs" Inherits="HuLiPTJob.HuLiPTJobPublishPTJob1" %>
<asp:Content ID="ContentPublishPTJob" ContentPlaceHolderID="PlaceHolderPublishPTJob" runat="server">
    <div class="PublishPTJob_ContentForm">
        <div class="PublishPTJob_ContentForm_Div">  
    <!--下面这一段的样式需要修改-->
     <form id="formpublishPTjob" runat="server">
      <div class="maindiv">    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="兼职名称："></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txbPTJobName" runat="server" Width="224px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="兼职名称不能为空" ControlToValidate="TxbPTJobName"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label2" runat="server" Text="雇主姓名："></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txbEmployerName" runat="server" Width="222px"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="雇主姓名不能为空" ControlToValidate="txbEmployerName"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label3" runat="server" Text="手机号码："></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txbPhoneNumber" runat="server" Width="221px"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="请输入正确的手机号码格式" ControlToValidate="txbPhoneNumber" ValidationExpression="^1[34578]\d{9}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label4" runat="server" Text="兼职描述："></asp:Label>
                </td>
                <td class="auto-style16">
                    <asp:TextBox ID="txbPTJobDesc" runat="server" Height="72px" style="margin-left: 0px" TextMode="MultiLine" Width="265px"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="兼职描述在两百字以内" ControlToValidate="txbPTJobDesc"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="Label5" runat="server" Text="兼职时间："></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:TextBox ID="txbPTJObTime" runat="server" Width="227px"></asp:TextBox>
                </td>
                <td class="auto-style19">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="兼职时间不能为空" ControlToValidate="txbPTJObTime"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">
                    <asp:Label ID="Label6" runat="server" Text="兼职地点："></asp:Label>
                </td>
                <td class="auto-style21">
                    <asp:TextBox ID="txbPTJobPlace" runat="server" Width="226px"></asp:TextBox>
                </td>
                <td class="auto-style22">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="兼职地点不能为空" ControlToValidate="txbPTJobPlace"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="3">
                    <asp:Button ID="btnSubmit" runat="server" Height="21px" Text="提交" OnClick="btnSubmit_Click" />
                    <asp:Button ID="btnReset" runat="server" Text="重置" />
                </td>
            </tr>
        </table>
    </div>   
         </form>
             <!--上面这一段的样式需要修改-->   
       </div>       
    </div>
</asp:Content>
