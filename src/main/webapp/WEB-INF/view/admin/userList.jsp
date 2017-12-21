<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/21 0021
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<link href="${pageContext.request.contextPath}/res/css/style.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/jquery1.42.min.js"></script>
<script language="JavaScript" src="${pageContext.request.contextPath}/res/js/select.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/jquery.SuperSlide.2.1.1.js"></script>
<script language="JavaScript" src="${pageContext.request.contextPath}/res/js/common.js"></script>
<title>用户列表</title>
<script type="text/javascript">
</script>
</head>

<body>

<div style="margin:0 20px;">

    <div class="btngroups">
        <div><a href="${pageContext.request.contextPath}/admin/changeUser">修改用户信息</a>
            <a style="margin-left: 20px;">删除</a></div>
        <div class="search">
            <input type="text" value="请输入搜索关键字" style="color: #b5b5b5"/>
            <a>搜索</a>
        </div>
        <div class="clear"></div>
    </div>
    <table class="tablelist">
        <thead>
        <tr>
            <th><input name="" type="checkbox" value="" class="checkall"/></th>
            <th>用户编号</th>
            <th>用户名称</th>
            <th>用户电话</th>
            <th>用户微信号</th>
            <th>用户支付宝号</th>
            <th>用户余额</th>
            <th>用户注册时间</th>
            <th>用户是否可用</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:if test="${users != null}">
            <c:forEach items="${users}" var="user" varStatus="status">
                <tr class="hui">
                    <td><input name="" type="checkbox" value=""/></td>
                    <td>${user.userId}</td>
                    <td>${user.userName}</td>
                    <td>${user.userPhone}</td>
                    <td>${user.userWechatId}</td>
                    <td>${user.userAlipayId}</td>
                    <td>${user.userMony}</td>
                    <td>${user.createTime}</td>
                    <c:if test="${user.userIsUsed == 1}">
                        <td>可用</td>
                    </c:if>
                    <c:if test="${user.userIsUsed != 1}">
                        <td>不可用</td>
                    </c:if>
                    <td><button class="tablelink" id="change${status.index}" onclick="change()" style="cursor: pointer">修改</button></td>
                </tr>
            </c:forEach>
        </c:if>
        </tbody>
    </table>
    <c:if test="${users != null}">
        <div class="pagin">
            <div class="message">共<i class="blue">${users.size()}</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
            <ul class="paginList">
                <li class="paginItem"><a href="javascript:1;"><span class="pagepre"></span></a></li>
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
    </c:if>
</div>

</body>
<!-------修改用户状态js--------->
<script type="text/javascript">

    function change() {
        $.ajax({
            url : 'changeUser',
            type : 'post',
            success : function () {
                alert();
            },
            error : function (e) {
                alert(e);
            }
        });
    }

</script>
</html>