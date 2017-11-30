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
    <link href="${path}/css/style.css" rel="stylesheet" type="text/css"/>
    <script language="JavaScript" src="${path}/js/jquery.js"></script>
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
        <a href="${path}/notice.jsp" target="rightFrame">
            <div class="title ddactive">
                <span><img src="${path}/images/i09.png" width="28px" height="28px"/></span>公告
                <div style="clear:both;"></div>
            </div>
        </a>
    </dd>
    <dd>
        <div class="title">
                <span>
                    <img src="${path}/images/i06.png" width="28px"/>
                </span>行政部
            <div style="clear:both;"></div>
        </div>
        <ul class="menuson">
            <li><cite></cite><a href="${path}/hr.html" target="rightFrame">招聘管理</a><i></i></li>
            <li><cite></cite><a href="build_hr.html" target="rightFrame">新建员工</a><i></i></li>
        </ul>

    </dd>
    <dd>
        <div class="title">
                <span>
                    <img src="images/icon02.png" width="28px"/>
                </span>设计部
            <div style="clear:both;"></div>
        </div>
        <ul class="menuson">
            <li><cite></cite><a href="partners.html" target="rightFrame">客户</a><i></i></li>
            <li><cite></cite><a href="partners.html" target="rightFrame">合作伙伴</a><i></i></li>
        </ul>
    </dd>
    <dd>
        <div class="title">
            <span><img src="images/i08.png" width="28px"/></span>商务部
            <div style="clear:both;"></div>
        </div>
        <ul class="menuson">
            <li><cite></cite><a href="empty.html" target="rightFrame">客户</a><i></i></li>
            <li><cite></cite><a href="partners.html" target="rightFrame">合作伙伴</a><i></i></li>
        </ul>
    </dd>
    <dd>
        <div class="title">
                <span>
                    <img src="images/i04.png" width="28px"/>
                </span>家具部
            <div style="clear:both;"></div>
        </div>
        <ul class="menuson">
            <li><cite></cite><a href="partners.html" target="rightFrame">客户</a><i></i></li>
            <li><cite></cite><a href="partners.html" target="rightFrame">合作伙伴</a><i></i></li>
        </ul>
    </dd>
    <dd>
        <div class="title">
                <span>
                    <img src="images/icon05.png" width="28px"/>
                </span>系统管理
            <div style="clear:both;"></div>
        </div>
        <ul class="menuson">
            <li><cite></cite><a href="sector.html" target="rightFrame">部门管理</a><i></i></li>
            <li><cite></cite><a href="person.html" target="rightFrame">人员管理</a><i></i></li>
            <li><cite></cite><a href="KPI.html" target="rightFrame">指标统计</a><i></i></li>
            <li><cite></cite><a href="password.html" target="rightFrame">密码修改</a><i></i></li>
        </ul>

    </dd>
    <dd>
        <div class="title">
                <span>
                    <img src="images/c03.png" width="28px"/>
                </span>公共库
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
