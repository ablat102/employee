<%--
  Created by IntelliJ IDEA.
  User: ablat
  Date: 2017-12-20
  Time: 13:54
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
    <link type="text/css" href="${pageContext.request.contextPath}/res/css/selectpick.css" rel="stylesheet"/>
    <script language="JavaScript" src="${pageContext.request.contextPath}/res/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/res/js/My97DatePicker/WdatePicker.js"
            type="text/javascript"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/res/js/selectpick.js"></script>
    <title>添加员工</title>
    <style type="text/css">
        p, label, span {
            font-size: 15px;
        }

        .build-person {
            width: 80%;
            margin: 0 auto;
            font-size: 15px;
            display: block;
            margin-top: 20px;
            padding-left: 20px;
        }

        .build-person p:first-child {
            display: block;
            float: left;
            width: 420px;
        }

        .build-person p:nth-child(2) {
            display: block;
            float: left;
        }

        .build-person p label {
            display: inline-block;
            width: 110px;
            color: #3a80d7;
            font-size: 15px;
            line-height: 30px;
        }

        .build-person p input {
            width: 200px;
            line-height: 30px;
            border: 1px solid #b5b5b5;
            height: 30px;
        }

        .build-person p select {
            width: 200px;
            border: 1px solid #b5b5b5;
            line-height: 30px;
            height: 30px;
            color: #3a80d7;
            margin-left: -5px;
            vertical-align: middle;
        }

        .build-person p i {
            display: inline-block;
            width: 35px;
            height: 35px;
            background: url("${pageContext.request.contextPath}/res/images/date.png") no-repeat;
            background-size: 100%;
            vertical-align: middle;
            text-align: center;
        }

        .selectpick_options {
            border: solid 1px #CFCFCF;
            border-bottom: none;
            position: absolute;
            top: 30px;
        !important;
            z-index: 9060;
            font-size: 13.5px;
            text-align: center;
            display: none;
        }
    </style>
    <script type="text/javascript">
        $(function () {
            $("#test_1").selectpick({
                container: '.test_1',
                onSelect: function (value, text) {
                    /*alert("这是回调函数，选中的值："+value+" \n选中的下拉框文本："+text);*/
                }
            });
        });
    </script>
</head>
<body>
<div style="margin:80px 20px;">
    <div class="build-person">
        <p><label>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</label><input type="text" name="adminName"></p>
        <div class="clear"></div>
    </div>
    <div class="build-person">
        <p><label>联系电话：</label><input type="text" name="adminPhone"></p>
        <div class="clear"></div>
    </div>
    <div class="build-person">
        <p><label>微信ID：</label><input type="text" name="adminWechatId"></p>
        <div class="clear"></div>
    </div>
    <div class="build-person">
        <p><label>管理员类型：</label><input type="text" name="adminRole"></p>
        <div class="clear"></div>
    </div>
    <div class="build-person"><a class="btnstyle" style=" margin: 50px 280px">确定</a></div>

</div>
</body>
<!--公告滚动js-->
<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript">

</script>
</html>