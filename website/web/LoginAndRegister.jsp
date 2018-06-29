<%--
  Created by IntelliJ IDEA.
  User: cwj
  Date: 6/27/18
  Time: 2:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    body {
        padding-top: 90px;
    }

    .panel-login {
        border-color: #ccc;
        -webkit-box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
        -moz-box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
        box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
    }

    .panel-login > .panel-heading {
        color: #00415d;
        background-color: #fff;
        border-color: #fff;
        text-align: center;
    }

    .panel-login > .panel-heading a {
        text-decoration: none;
        color: #666;
        font-weight: bold;
        font-size: 15px;
        -webkit-transition: all 0.1s linear;
        -moz-transition: all 0.1s linear;
        transition: all 0.1s linear;
    }

    .panel-login > .panel-heading a.active {
        color: #029f5b;
        font-size: 18px;
    }

    .panel-login > .panel-heading hr {
        margin-top: 10px;
        margin-bottom: 0px;
        clear: both;
        border: 0;
        height: 1px;
        background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
        background-image: -moz-linear-gradient(left, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
        background-image: -ms-linear-gradient(left, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
        background-image: -o-linear-gradient(left, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
    }

    .panel-login input[type="text"], .panel-login input[type="email"], .panel-login input[type="password"] {
        height: 45px;
        border: 1px solid #ddd;
        font-size: 16px;
        -webkit-transition: all 0.1s linear;
        -moz-transition: all 0.1s linear;
        transition: all 0.1s linear;
    }

    .panel-login input:hover,
    .panel-login input:focus {
        outline: none;
        -webkit-box-shadow: none;
        -moz-box-shadow: none;
        box-shadow: none;
        border-color: #ccc;
    }

    .btn-login {
        background-color: #59B2E0;
        outline: none;
        color: #fff;
        font-size: 14px;
        height: auto;
        font-weight: normal;
        padding: 14px 0;
        text-transform: uppercase;
        border-color: #59B2E6;
    }

    .btn-login:hover,
    .btn-login:focus {
        color: #fff;
        background-color: #53A3CD;
        border-color: #53A3CD;
    }

    .forgot-password {
        text-decoration: underline;
        color: #888;
    }

    .forgot-password:hover,
    .forgot-password:focus {
        text-decoration: underline;
        color: #666;
    }

    .btn-register {
        background-color: #1CB94E;
        outline: none;
        color: #fff;
        font-size: 14px;
        height: auto;
        font-weight: normal;
        padding: 14px 0;
        text-transform: uppercase;
        border-color: #1CB94A;
    }

    .btn-register:hover,
    .btn-register:focus {
        color: #fff;
        background-color: #1CA347;
        border-color: #1CA347;
    }
</style>
<%
    String action = request.getParameter("action");
%>
<head>
    <title>登录注册</title>
    <meta charset="utf-8">
    <link rel="icon"href="images/logo.png"type="image/x-icon">
    <link rel="shortcut icon"href="images/logo.png"type="image/x-icon">
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-2.1.1.js"></script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-login">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-6">
                            <a href="LoginAndRegister.jsp?action=login" id="login-form-link">登录</a>
                        </div>
                        <div class="col-xs-6">
                            <a href="LoginAndRegister.jsp?action=register" id="register-form-link">注册</a>
                        </div>
                    </div>
                    <hr>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <form id="login-form" action="Login" onsubmit="return login()"
                                  method="post" role="form" style="display: block;">
                                <div class="form-group">
                                    <input type="text" name="uid" id="uid" tabindex="1"
                                           class="form-control" placeholder="用户名" value="">
                                </div>
                                <div class="form-group">
                                    <input type="password" name="pwd" id="password"
                                           tabindex="2" class="form-control" placeholder="密码">
                                </div>

                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-sm-6 col-sm-offset-3">
                                            <input type="submit" name="login-submit"
                                                   id="login-submit" tabindex="4"
                                                   class="form-control btn btn-login"
                                                   value="登录">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="text-center">
                                                <a href="#" tabindex="5"
                                                   class="forgot-password">忘记密码</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <form id="register-form" action="Register" onsubmit="return register()"
                                  method="post" role="form" style="display: none;">
                                <div class="form-group">
                                    <input type="text" name="uid" id="username" tabindex="1"
                                           class="form-control" placeholder="用户名" value="">
                                </div>
                                <div class="form-group">
                                    <input type="email" name="email" id="email" tabindex="1"
                                           class="form-control" placeholder="邮箱"
                                           value="">
                                </div>
                                <div class="form-group">
                                    <input type="password" name="pwd" id="pwd"
                                           tabindex="2" class="form-control" placeholder="密码">
                                </div>
                                <div class="form-group">
                                    <input type="password" name="confirm-password"
                                           id="confirm-password" tabindex="2" class="form-control"
                                           placeholder="再次输入密码">
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-sm-6 col-sm-offset-3">
                                            <input type="submit" name="register-submit"
                                                   id="register-submit" tabindex="4"
                                                   class="form-control btn btn-register"
                                                   value="注册">
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">
    function login() {
        if (document.getElementById("uid").value.contains(" ")) {
            alert("用户名不能包含空格！");
            return false;
        }
        return true;
    }

    function register() {
        if (document.getElementById("pwd").value != document.getElementById("confirm-password").value) {
            alert("密码不一致");
            return false;
        }
        return true;
    }
</script>
<script type="text/javascript">
    if ("<%=action%>" == "register") {
        $("#register-form").delay(100).fadeIn(100);
        $("#login-form").fadeOut(100);
        $('#login-form-link').removeClass('active');
        $('#register-form-link').addClass('active');
        e.preventDefault();
    } else if ("<%=action%>" == "login") {
        $("#login-form").delay(100).fadeIn(100);
        $("#register-form").fadeOut(100);
        $('#register-form-link').removeClass('active');
        $('#login-form-link').addClass('active');
        e.preventDefault();
    } else if ("<%=action%>" == "error") {
        alert("帐号密码错误~!")
    }else if ("<%=action%>" == "success"){
        alert("注册成功!")
    }

    $(function () {
        $('#login-form-link').click(function (e) {
            $("#login-form").delay(100).fadeIn(100);
            $("#register-form").fadeOut(100);
            $('#register-form-link').removeClass('active');
            $(this).addClass('active');
            e.preventDefault();
        });
        $('#register-form-link').click(function (e) {
            $("#register-form").delay(100).fadeIn(100);
            $("#login-form").fadeOut(100);
            $('#login-form-link').removeClass('active');
            $(this).addClass('active');
            e.preventDefault();
        });
    });

</script>
</html>
