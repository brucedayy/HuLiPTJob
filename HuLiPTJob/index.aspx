<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="HuLiPTJob_HomePage.index" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>HuLiPTJob_HomePage</title>
    <style type="text/css">
        body {
            margin: 0;
            height: 1100px;
        }

        .HuLiPTJob_HomePage_AllContentDiv {
            margin: auto;
            background-color: #b6ff00;
            width: 1280px;
            height: 1200px;
        }

        .HuLiPTJob_HomePage_header {
            margin: auto;
            background-color: #000000;
            height: 60px;
            width: 1280px;
        }

        #HuLiPTJob_HomePage_header_logo {
            float: left;
            width: 200px;
            height: 60px;
            background-image: url(logo/mainlogo.png);
        }

        #navigation {
            float: left;
            margin-left: 30px;
            width: 700px;
            height: 60px;
            background-color: #000000;
        }

        .HuLiPTJob_HomePage_header #UserInformation {
            float: left;
            margin-left: 30px;
            width: 200px;
            height: 60px;
            background-color: #000000;
        }

        .HuLiPTJob_HomePage_ShowNotice {
            width: 1280px;
            height: 400px;
        }

            .HuLiPTJob_HomePage_ShowNotice .CenterContent {
                margin: auto;
                width: 1000px;
                height: 400px;
                background-color: #b200ff;
            }

        .HuLiPTJob_HomePage_latestPTJob {
            width: 1280px;
            height: 400px;
            background-color: #0094ff;
        }

        .HuLiPTJob_HomePage_footer {
            width: 1280px;
            height: 200px;
            background-color: aliceblue;
        }

        #navigation ul {
            list-style: none;
            position: absolute;
            margin-top: 0;
            top: -1px;
            left: 257px;
            height: 58px;
            margin-bottom: 0px;
        }

        #navigation li {
            float: left;
            background-color: #000000;
            width: 100px;
            height: 40px;
            padding-top: 20px;
            text-align: center;
            cursor: pointer;
        }

            #navigation li a {
                text-decoration: none;
                font-size: 18px;
                color: #FFFFFF;
                font-family: 'Microsoft YaHei';
            }

            #navigation li:hover {
                background-color: #0094ff;
            }

        .btn_HomePage_Registration {
            display: block;
            float: left;
            margin-top: 25px;
            margin-left: 25px;
            border: 1px solid #0094ff;
            background-color: #0094ff;
            cursor: pointer;
            text-align: center;
            font-family: "Microsoft YaHei UI";
        }

        .btn_HomePage_Login {
            float: left;
            display: block;
            margin-top: 25px;
            margin-left: 5px;
            border: 1px solid #0094ff;
            background-color: #0094ff;
            cursor: pointer;
            text-align: center;
            font-family: "Microsoft YaHei UI";
        }

        .btnReghover {
            background-color: #0033FF;
        }
        .divLoginWin{
            margin:auto;
            background-color:#f2e6eb;
            width:400px;
            height:600px;
        }       
          
        #form1 {
            height: 57px;
        }
          
    </style>
    <script src="jquery-1.11.3.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('.btn_HomePage_Registration').hover(
                function () {
                    $(this).addClass('btnReghover');
                },
                function () {
                    $(this).removeClass('btnReghover');
                }
            )
            $('.btn_HomePage_Login').hover(
               function () {
                   $(this).addClass('btnReghover');
               },
               function () {
                   $(this).removeClass('btnReghover');
               }
           )
        });
    </script>  
</head>
<body> 
    <div class="HuLiPTJob_HomePage_AllContentDiv">
        <div class="HuLiPTJob_HomePage_header">
            <div id="HuLiPTJob_HomePage_header_logo"></div>
            <div id="navigation">
                <ul>
                    <li><a href="index.aspx">兼职首页</a></li>
                    <li><a href="HuLiPTJobSearchPTJob.aspx">寻找兼职</a></li>
                    <li><a href="HuLiPTJobPublishPTJob.aspx">发布兼职</a></li>
                    <li><a href="#">帮助信息</a></li>
                </ul>
            </div>
            <div id="UserInformation">
                <form id="form1" runat="server">
                <asp:Button class="btn_HomePage_Registration" ID="btnReg" runat="server" Text="注册" Height="20px" OnClick="btnReg_Click" Width="64px"></asp:Button>
                <asp:Button class="btn_HomePage_Login" runat="server" ID="btnLogin" Text="登陆" Height="20px" OnClick="btnLogin_Click" Width="66px"></asp:Button>
                </form>        
            </div>
        </div>
        <div class="HuLiPTJob_HomePage_ShowNotice">
            <div class="CenterContent">              
            </div>
        </div>
        <div class="HuLiPTJob_HomePage_latestPTJob">HuLiPTJob_HomePage_latestPTJob</div>
        <div class="HuLiPTJob_HomePage_footer">HuLiPTJob_HomePage_footer</div>
    </div>    
</body>
</html>
