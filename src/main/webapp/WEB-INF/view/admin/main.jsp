<%--
  Created by IntelliJ IDEA.
  User: ablat
  Date: 2017-11-29
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<% String path = request.getContextPath();%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <title>Title</title>
</head>
<frameset rows="90,*" cols="*" frameborder="no" border="0" framespacing="0">
    <frame src="${pageContext.request.contextPath}/admin/top" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" title="topFrame"/>
    <frameset cols="187,*" frameborder="no" border="0" framespacing="0">
        <frame src="${pageContext.request.contextPath}/admin/left" name="leftFrame" scrolling="No" noresize="noresize" id="leftFrame" title="leftFrame"/>
    </frameset>
</frameset>
<noframes>
    <body>
    </body>
</noframes>
</html>