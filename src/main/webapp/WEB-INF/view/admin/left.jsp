<%--
  Created by IntelliJ IDEA.
  User: ablat
  Date: 2017-11-29
  Time: 10:30
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
    <link href="${pageContext.request.contextPath}/res/css/style.css" rel="stylesheet" type="text/css"/>
    <script language="JavaScript" src="${pageContext.request.contextPath}/res/js/jquery.js"></script>
    <title>Title</title>
    <script type="text/javascript">
        $(function () {
            //导航切换
            $(".menuson li").click(function () {
                $(".menuson li.active").removeClass("active")
                $(this).addClass("active");
            });

            $('.title').click(function () {
                var $ul = $(this).next('ul');
                $('dd').find('ul').slideUp();
                var $dd = $(this).parent();
                if ($ul.is(':visible')) {
                    $(this).next('ul').slideUp();
                    $(this).removeClass("ddactive");

                } else {
                    $(this).next('ul').slideDown();
                    $(this).addClass("ddactive");
                    $(".title").not(this).removeClass("ddactive");
                }
            });
        })
    </script>

</head>
<body style="background: #f0f9fd;">
<div class="bgcover"></div>
<dl class="leftmenu">
    <dd>
        <div class="title">
                <span>
                    <img src="${pageContext.request.contextPath}/res/images/i06.png" width="28px"/>
                </span>管理员管理
            <div style="clear:both;"></div>
        </div>
        <ul class="menuson">
            <li><cite></cite><a href="${pageContext.request.contextPath}/admin/adminList"
                                target="rightFrame">管理员列表</a><i></i>
            </li>
            <li><cite></cite><a href="${pageContext.request.contextPath}/admin/addAdmin"
                                target="rightFrame">添加管理员</a><i></i></li>
        </ul>

    </dd>
    <dd>
        <div class="title">
                <span>
                    <img src="${pageContext.request.contextPath}/res/images/icon02.png" width="28px"/>
                </span>用户管理
            <div style="clear:both;"></div>
        </div>
        <ul class="menuson">
            <li><cite></cite><a href="${pageContext.request.contextPath}/admin/userList" target="rightFrame">用户列表</a><i></i></li>
            <li><cite></cite><a href="${pageContext.request.contextPath}/admin/changeUser" target="rightFrame">用户管理</a><i></i></li>
        </ul>
    </dd>
    <dd>
        <div class="title">
            <span><img src="${pageContext.request.contextPath}/res/images/i08.png" width="28px"/></span>机器管理
            <div style="clear:both;"></div>
        </div>
        <ul class="menuson">
            <li><cite></cite><a href="${pageContext.request.contextPath}/admin/machineList" target="rightFrame">机器列表</a><i></i></li>
            <li><cite></cite><a href="${pageContext.request.contextPath}/admin/changeMachine" target="rightFrame">机器管理</a><i></i></li>
        </ul>
    </dd>
    <%--物品管理--%>
    <dd>
        <div class="title">
                <span>
                    <img src="${pageContext.request.contextPath}/res/images/i04.png" width="28px"/>
                </span>订单管理
            <div style="clear:both;"></div>
        </div>
        <ul class="menuson">
            <li><cite></cite><a href="${pageContext.request.contextPath}/admin/order/orderList" target="rightFrame">订单列表</a><i></i></li>
            <li><cite></cite><a href="${pageContext.request.contextPath}/admin/order/orderList" target="rightFrame">订单管理</a><i></i></li>
        </ul>
    </dd>
    <%--订单管理--%>
    <dd>
        <div class="title">
                <span>
                    <img src="${pageContext.request.contextPath}/res/images/i04.png" width="28px"/>
                </span>物品管理
            <div style="clear:both;"></div>
        </div>
        <ul class="menuson">
            <li><cite></cite><a href="${pageContext.request.contextPath}/admin/product/productList" target="rightFrame">物品列表</a><i></i></li>
            <li><cite></cite><a href="${pageContext.request.contextPath}/admin/product/addProduct" target="rightFrame">物品管理</a><i></i></li>
        </ul>
    </dd>
    <dd>
        <div class="title">
                <span>
                    <img src="${pageContext.request.contextPath}/res/images/icon05.png" width="28px"/>
                </span>系统管理
            <div style="clear:both;"></div>
        </div>
        <ul class="menuson">
            <li><cite></cite><a href="sector.html" target="rightFrame">系统管理</a><i></i></li>
            <li><cite></cite><a href="person.html" target="rightFrame">系统管理</a><i></i></li>
            <li><cite></cite><a href="KPI.html" target="rightFrame">其他</a><i></i></li>
            <li><cite></cite><a href="password" target="rightFrame">其他</a><i></i></li>
        </ul>

    </dd>
    <dd>
        <div class="title">
                <span>
                    <img src="${pageContext.request.contextPath}/res/images/c03.png" width="28px"/>
                </span>订单管理
            <div style="clear:both;"></div>
        </div>
        <ul class="menuson">
            <li><cite></cite><a href="turn.html" target="rightFrame">日志列表</a><i></i></li>
            <li><cite></cite><a href="turn.html" target="rightFrame">日志管理</a><i></i></li>
        </ul>

    </dd>

    <dd>
        <div class="title">
                <span>
                    <img src="${pageContext.request.contextPath}/res/images/c03.png" width="28px"/>
                </span>日志管理
            <div style="clear:both;"></div>
        </div>
        <ul class="menuson">
            <li><cite></cite><a href="turn.html" target="rightFrame">客户</a><i></i></li>
            <li><cite></cite><a href="turn.html" target="rightFrame">合作伙伴</a><i></i></li>
        </ul>

    </dd>
</dl>

</body>
</html>
