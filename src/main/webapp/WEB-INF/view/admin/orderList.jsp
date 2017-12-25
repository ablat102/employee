<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/25 0025
  Time: 9:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<% String path = request.getContextPath(); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <title>订单列表</title>
</head>
<body>
<div style="margin:0 20px;">
    <div class="btngroups">
        <div><a href="${pageContext.request.contextPath}/admin/order/">订单管理</a>
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
            <th>订单编号</th>
            <th>下单用户</th>
            <th>物品名称</th>
            <th>下单时间</th>
            <th>机器</th>
            <th>订单金额</th>
            <th>物品重量</th>
            <th>物品重量</th>
            <th>操作</th>
        </tr>
        </thead>
        <c:if test="${orderInfos != null}">
            <tbody>
                    <c:forEach items="${orderInfos}" var="orderinfo">
                        <tr>
                            <td><input name="" type="checkbox" value=""/></td>
                            <td>${orderinfo.orderInfoId}</td>
                            <td>${orderinfo.userId}</td>
                            <td>${orderinfo.productId}</td>
                            <td><fmt:formatDate value="${orderinfo.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                            <td>${orderinfo.machineId}</td>
                            <td>${orderinfo.orderAmount}</td>
                            <td>${orderinfo.productWeight}</td>
                            <td>${orderinfo.productPhoto}</td>
                            <td>删除</td>
                        </tr>
                    </c:forEach>
            </tbody>
        </c:if>
    </table>

    <div class="pagin">
        <div class="message">共<i class="blue"></i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
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

