﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="HuLiPTJob.Registration" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .HuLiPTJobRegistration_maindiv {
            margin: auto;
            width: 450px;
            height: 600px;
            background-color: #b6ff00;
        }

        .labelusername {
            float: left;
            width: 80px;
            background-color: #CCCCCC;
        }

        .infoboxusername {
            width: 200px;
        }

        .errorusername {
            color: red;
            padding-left: 10px;
        }

        .submit {
            margin-left: 125px;
            margin-top: 10px;
        }

        .labelpasswd {
            float: left;
            width: 80px;
            background-color: #CCCCCC;
        }

        .infoboxpasswd {
            width: 200px;
        }

        .errorpasswd {
            color: red;
            padding-left: 10px;
        }

        .labelcpasswd {
            float: left;
            width: 80px;
            background-color: #CCCCCC;
        }

        .infoboxcpasswd {
            width: 200px;
        }

        .errorcpasswd {
            color: red;
            padding-left: 10px;
        }
    </style>
</head>
<body>
    <div class="HuLiPTJobRegistration_maindiv">
        <form id="signup" method="post" action="Registration.aspx">
            <div>
                <span class="labelusername">用户名</span><input type="text" class="infoboxusername" name="userid" />
                <span class="errorusername">用户名不能为空</span>
                <p>
                    <span class="labelpasswd">密码</span><input type="password" class="infoboxpasswd" name="passwdid" />
                    <span class="errorpasswd">密码不能为空</span>
                </p>
                <p>
                    <span class="labelcpasswd">确认密码</span><input type="password" class="infoboxcpasswd" name="cpasswdid" />
                    <span class="errorcpasswd">两次密码不一致</span>
                </p>
            </div>
            <input class="submit" type="submit" value="提交" />
            <input class="reset" type="reset" value="重置" />
        </form>
    </div>
    <script src="jquery-1.11.3.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('.errorusername').hide();
            $('.errorpasswd').hide();
            $('.errorcpasswd').hide();
            $('.submit').click(function (event) {
                var datausername = $('.infoboxusername').val();
                var datapasswd = $('.infoboxpasswd').val();
                var datacpasswd = $('.infoboxcpasswd').val();

                var lenun = datausername.length;
                var lenpw = datapasswd.length;
                var lencpw = datacpasswd.length;

                if (lenun < 1) {
                    $('.errorusername').show();
                    event.preventDefault();
                }
                else {
                    $('.errorusername').hide();
                }
                if (lenpw < 1) {
                    $('.errorpasswd').show();
                    event.preventDefault();
                }
                else {
                    $('.errorpasswd').hide();
                }
                if (datapasswd != datacpasswd) {
                    $('.errorcpasswd').show();
                    event.preventDefault();
                }
                else {
                    $('.errorcpasswd').hide();
                }
            })
        }
        )
    </script>
</body>
</html>