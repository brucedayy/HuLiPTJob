<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PTJobAdmin.aspx.cs" Inherits="HuLiPTJob.PTJobAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Administrator</title>
    <style type="text/css">
        body{
            margin:0;
        }
        .HuLiPTJobAdmin_maindiv{
            margin:auto;
            width:1280px;
            height:1000px;
            background-color:#b6ff00;
        }
        .HuLiPTJobAdmin_header{
            width:1280px;
            height:100px;
            background-color:#808080;
        }
        .HuLiPTJobAdmin_Left_Nav{
            float:left;
            width:200px;
            height:800px;
            background-color:#0094ff;
        }
        .HuLiPTJobAdmin_Right_Content{
            float:left;
            width:1080px;
            height:800px;
            background-color:#ffd800;
        }
        .HuLiPTJobAdmin_footer{
            margin-top:800px;
            width:1280px;
            height:100px;
            background-color:#808080;
        }
        .HuLiPTJobAdmin_Right_Content_CheckApply{
            width:800px;
            height:800px;
            background-color:#b6ff00;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="HuLiPTJobAdmin_maindiv">
        <div class="HuLiPTJobAdmin_header"></div>  
            <div class="HuLiPTJobAdmin_Left_Nav"></div>
            <div class="HuLiPTJobAdmin_Right_Content">
                <div class="HuLiPTJobAdmin_Right_Content_CheckApply"></div>
            </div>        
        <div class="HuLiPTJobAdmin_footer"></div>                                                                                                  
    </div>
    </form>
</body>
</html>
