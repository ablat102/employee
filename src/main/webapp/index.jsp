<%--
  Created by IntelliJ IDEA.
  User: ablat
  Date: 2017-11-29
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<% String path = request.getContextPath(); %>
<%--<jsp:forward page="/admin/login"></jsp:forward>--%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <script language="JavaScript" src="${pageContext.request.contextPath}/res/js/jquery.js"></script>
    <title>丁丁添金--管理员登录</title>
    <script>
        window.location.href = "admin/login";
    </script>
</head>
<body>
</body>
</html>
