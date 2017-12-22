<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/22 0022
  Time: 9:42
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<link href="${pageContext.request.contextPath}/res/css/style.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/jquery1.42.min.js"></script>
<script language="JavaScript" src="${pageContext.request.contextPath}/res/js/select.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/jquery.SuperSlide.2.1.1.js"></script>
<script language="JavaScript" src="${pageContext.request.contextPath}/res/js/common.js"></script>
<title>机器列表</title>
<script type="text/javascript">
</script>
</head>

<body>

<div style="margin:0 20px;">

    <div class="btngroups">
        <div><a href="${pageContext.request.contextPath}/admin/addMachine">添加机器</a>
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
            <th>机器编号</th>
            <th>机器信息</th>
            <th>机器位置</th>
            <th>机器状态</th>
            <th>机器满度</th>
            <th>机器提示信息</th>
            <th>机器放置时间</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
            <c:if test="${machines != null}">
                <c:forEach items="${machines}" var="machine">
                    <tr class="hui">
                        <td><input name="" type="checkbox" value=""/></td>
                        <td>${machine.machineId}</td>
                        <td>${machine.machineDate}</td>
                        <td>${machine.machineLocation}</td>
                        <c:if test="${machine.machineStatus == 1}">
                            <td>正常</td>
                        </c:if>
                        <c:if test="${machine.machineStatus != 1}">
                            <td style="color: red;">出现异常</td>
                        </c:if>
                        <%--机器满度--%>
                        <c:if test="${machine.machineCapacity == 1}">
                            <td>未满</td>
                        </c:if>
                        <c:if test="${machine.machineCapacity != 1}">
                            <td style="color: red;">已满</td>
                        </c:if>
                            <%--机器异常提示--%>
                        <c:if test="${machine.machineWarning != \"无\"}">
                            <td style="color: red;">${machine.machineWarning}</td>
                        </c:if>
                        <c:if test="${machine.machineWarning == \"无\"}">
                            <td>${machine.machineWarning}</td>
                        </c:if>
                        <%--格式化日期--%>
                        <td><fmt:formatDate value="${machine.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                        <td><button class="tablelink" id="change" onclick="change()" style="cursor: pointer">修改</button></td>
                    </tr>
                </c:forEach>
            </c:if>
        <c:if test="${machines == null}">
            <td>没有任何机器！</td>
        </c:if>
        </tbody>
    </table>
    <c:if test="${machines != null}">
        <div class="pagin">
            <div class="message">共<i class="blue">${machines.size()}</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
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
                alert("成功了");
            },
            error : function (e) {
                alert(e);
            }
        });
    }

</script>
</html>