<%--
  Created by IntelliJ IDEA.
  User: ablat
  Date: 2017-11-29
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<% String path = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <link href="${pageContext.request.contextPath}/res/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/res/css/style.css" rel="stylesheet" type="text/css"/>
    <script language="JavaScript" src="${pageContext.request.contextPath}/res/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/res/js/login.js"></script>
    <title>丁丁添金--管理员登录</title>
    <style type="text/css">
        html {
            height: 100%;
            font-family: 微软雅黑;
        }

        body {
            height: 100%;
            margin: 0;
            background: url(${pageContext.request.contextPath}/res/images/loginbg.jpg) center no-repeat;
            background-size: cover;
            -ms-behavior: url(${pageContext.request.contextPath}/res/css/backgroundsize.min.htc);
            behavior: url(${pageContext.request.contextPath}/res/css/backgroundsize.min.htc);
        }

        .login-main {
            position: absolute;
            top: 50%;
            margin-top: -210px;
            width: 100%;
        }

        .login-main .line {
            width: 100%;
            height: 20px;
        }

        .login-main > div {
            width: 100%;
            height: 400px;
            background: #ffffff;
        }

        .login {
            width: 1000px;
            margin: 0 auto;
            border: 0px solid #000000;
        }

        .login .logo {
            padding-top: 140px;
            width: 450px;
            float: left;
        }

        .login .login-input {
            width: 450px;
            float: right;
            margin-left: 10px;
            margin-top: 60px;
        }

        .login .login-input div {
            margin-top: 30px;
        }

        .login .login-input div label {
            display: inline-block;
            width: 100px;
            text-align: center;
            font-size: 18px;
        }

        .login .login-input div input {
            width: 300px;
            height: 35px;
            line-height: 35px;
            padding: 0 10px;
            border: 1px solid #3b80d7;
            border-radius: 5px;
        }

        .login .login-btn {
            margin-left: 100px;
            margin-top: 40px;
            font-size: 15px;
        }

        .login .login-btn a {
            display: inline-block;
            width: 120px;
            height: 35px;
            line-height: 35px;
            border: 2px solid #3b80d7;
            text-align: center;
            border-radius: 5px;
            font-size: 16px;
            color: #000000;
            text-decoration: none;
        }

        .login .login-btn a:hover {
            background: #3b80d7;
            color: #ffffff;
        }

        .login .login-btn span {
            padding-left: 110px;
        }

        .login .login-btn span:hover {
            color: #3b80d7;
        }

        span {
            display: inline;
        }

        .err {
            width: 300px;
            padding: 5px 10px;
            margin: 10px 103px;
            border: 1px solid red;
            display: none;
            border-radius: 5px;
        }

        .err .glyphicon {
            font-size: 14px;
            color: red;
        }

        .err #errMsg1, #errMsg2 {
            color: red;
            font-size: 14px;
            padding-left: 10px;
        }

    </style>
</head>
<body>
<div class="login-main" style="">
    <img src="${pageContext.request.contextPath}/res/images/ltop.png" alt="" class="line">
    <div>
        <div class="login" style=" ">
            <div class="logo">
                <%--<img src="${pageContext.request.contextPath}/images/login-logo.png" width="100%">--%>
                <h1>丁丁添金</h1>
            </div>
            <div style=" width: 7px;  margin: 50px 40px;float: left;">
                <%--LOGO--%>
                <img
                        src="${pageContext.request.contextPath}/res/images/login-line.png" alt=""
                        width="100%">

            </div>
            <div class="login-input" style="">
                <div>
                    <div class="err" id="err1"><span class="glyphicon glyphicon-remove-circle"></span><span
                            id="errMsg1"></span>
                    </div>
                    <label>用户名：</label>
                    <input type="text" placeholder="请输入管理员用户名" name="adminNo" id="empNo">

                </div>
                <div>
                    <div class="err" id="err2"><span class="glyphicon glyphicon-remove-circle"></span><span
                            id="errMsg2"></span>
                    </div>
                    <label>密&nbsp;&nbsp;&nbsp;码：</label>
                    <input type="password" placeholder="请输入管理员密码" name="password" id="password">

                </div>
                <div class="login-btn"><a id="loginBtn">登陆</a><span class="forget">忘记密码?</span>
                </div>
            </div>
        </div>
    </div>
    <img src="${pageContext.request.contextPath}/res/images/ldown.png" alt="" class="line">
</div>
</body>
</html>
