<%--
  Created by IntelliJ IDEA.
  User: ablat
  Date: 2017-11-29
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <link href="${pageContext.request.contextPath}/res/css/style.css" rel="stylesheet" type="text/css"/>
    <title>Title</title>
    <style type="text/css">
        .user {
            position: fixed;
            left: 60px;
            font-size: 16px;
            color: #ffffff;
        }

        .user:before {
            content: "";
            width: 50px;
            height: 50px;
            background: url(${pageContext.request.contextPath}/res/images/admin.png) no-repeat;
            display: inline-block;
            background-size: cover;
            vertical-align: middle;
        }

        .quit {
            position: fixed;
            top: 30px;
            right: 120px;
            width: 100px;
            height: 35px;
            background: #c4e6f4;
            border-radius: 5px;
            text-align: center;
            color: #33557a;
            font-size: 16px;
            line-height: 35px;
        }

    </style>
</head>
<body style=" width: 100%; height:90px;background-image: url('${pageContext.request.contextPath}/res/images/bg.png');background-size: cover;filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=${pageContext.request.contextPath}/'res/images/bg.png',sizingMethod='scale'); ">
<div class="bgcover"></div>
<div style="" class="user">admin，欢迎登陆</div>
<div style="margin: 28px auto; width: 500px;">
    <%--<img src="${pageContext.request.contextPath}/res/images/logo.png"/>--%>
</div>
<a class="quit" href="${pageContext.request.contextPath}/admin/login" target="_blank">退&nbsp;&nbsp;出</a>
<div style="clear: both"></div>
</body>
</html>