<%--
  Created by IntelliJ IDEA.
  User: ablat
  Date: 2017-11-29
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<% String path = request.getContextPath(); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <link href="${pageContext.request.contextPath}/res/css/style.css" rel="stylesheet" type="text/css"/>
    <script language="JavaScript" src="${pageContext.request.contextPath}/res/js/jquery.js"></script>
    <script language="JavaScript" src="${pageContext.request.contextPath}/res/js/select.js"></script>
    <script language="JavaScript" src="${pageContext.request.contextPath}/res/js/common.js"></script>
    <title>管理员管理</title>
    <script type="text/javascript">

        $(function () {
            //点击转派弹框
            $(".delete").click(function () {
                if ($(":checkbox:checked").length == 0) {
                    alert("请选择要删除的员工")
                } else {

                }
            });

        });
    </script>
</head>
<body>
<div style="margin:0 20px;">
    <div class="btngroups">
        <div><a href="${pageContext.request.contextPath}/admin/addAdmin">添加管理员</a>
            <a style="margin-left: 20px;"
               class="delete">删除</a></div>
        <div class="search">
            <input type="text" value="请输入搜索内容" style="color: #b5b5b5;"/>
            <a>搜索</a>
        </div>
        <div class="clear"></div>
    </div>
    <table class="tablelist">
        <thead>
        <tr>
            <th><input name="" type="checkbox" value="" class="checkall"/></th>
            <th>管理员编号</th>
            <th>管理员姓名</th>
            <th>管理员联系电话</th>
            <th>管理员微信ID</th>
            <th>管理员类型</th>
        </tr>
        </thead>
        <tbody>
        <c:if test="${admins != null}">
            <c:forEach items="${admins}" var="admin">
                <tr>
                    <td><input name="" type="checkbox" value=""/></td>
                    <td>${admin.adminId}</td>
                    <td>${admin.adminName}</td>
                    <td>${admin.adminPhone}</td>
                    <td>${admin.adminWechatId}</td>
                    <c:if test="${admin.adminRole == 0}">
                        <td>后台管理员</td>
                    </c:if>
                    <c:if test="${admin.adminRole == 1}">
                        <td>维护管理员</td>
                    </c:if>

                </tr>
            </c:forEach>
        </c:if>
        </tbody>
    </table>

    <div class="pagin">
        <div class="message">共<i class="blue">${admins.size()}</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
        <ul class="paginList">
            <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
            <li class="paginItem"><a href="javascript:;">1</a></li>
            <li class="paginItem current"><a href="javascript:;">2</a></li>
            <li class="paginItem"><a href="javascript:;">3</a></li>
            <li class="paginItem"><a href="javascript:;">4</a></li>
            <li class="paginItem"><a href="javascript:;">5</a></li>
            <li class="paginItem more"><a href="javascript:;">...</a></li>
            <li class="paginItem"><a href="javascript:;">10</a></li>
            <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
        </ul>
    </div>

</div>


</body>
<!--公告滚动js-->
<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript">
</script>
</html>
