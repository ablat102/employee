<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/21 0021
  Time: 13:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <link href="${pageContext.request.contextPath}/res/css/style.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" src="${pageContext.request.contextPath}/res/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/res/js/my97datepicker/WdatePicker.js" type="text/javascript"></script>
    <title>新建公告</title>
    <style type="">
        .table-user{border:solid 1px #959595; width:100%; clear:both; }
        .table-user td{ line-height:45px; text-indent:11px; border-right: solid 1px #959595;border-bottom:solid 1px #959595; font-size: 15px;}
        .table-user td label{ font-size: 15px; color: #3a80d7;}
        .table-user td input{ width: 300px; border: 1px solid #c8c8c8;height: 30px; vertical-align:middle; line-height: 30px; margin-top: -3px;}
        .table-user td i{ width: 35px; height: 35px; display:inline-block; background: url("${pageContext.request.contextPath}/res/images/date.png"); background-size: 100%; vertical-align: middle;  }
        .table-user td textarea{ width: 85%;  border: 1px solid #c8c8c8;margin: 10px 0; padding: 10px;}

        .table-user1{border:solid 1px #959595; width:100%; clear:both; border-top: none;}
        .table-user1 td{ line-height:45px; text-indent:11px; border-right: solid 1px #959595;border-bottom:solid 1px #959595; font-size: 15px;text-align: center;}
        .table-user1 td label{ font-size: 15px; color: #3a80d7;}
        .table-user1 .td1{width: 300px; font-size: 15px;}
    </style>
</head>
<body>

<div style="margin:0 60px;">
    <div class="btngroups">
        <div><a>确定</a></div>
        <div class="clear"></div>
    </div>
    <table class="table-user">

        <tbody>
        <tr>

            <td><label>编&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：</label><input type="text"/></td>
            <td><label>公司名称：</label><input type="text"/></td>


        </tr>
        <tr>
            <td><label>联&nbsp;&nbsp;系&nbsp;&nbsp;人：</label><input type="text"/></td>
            <td><label>等&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;级：</label><input type="text"/></td>
        </tr>
        <tr>
            <td><label>联系电话：</label><input type="text"/></td>
            <td><label>提单时间：</label><input type="text"/></td>
        </tr>
        <tr>
            <td><label>提醒时间：</label><input type="text" class="date" id="d12"/><i onclick="WdatePicker({el:'d12'})"></i></td>
            <td><label>剩余时间：</label><input type="text"/></td>
        </tr>
        <tr>
            <td colspan="2"><label style="vertical-align: top;">回访内容：</label><textarea rows="6" cols=""></textarea></td>

        </tr>

        </tbody>
    </table>
    <table class="table-user1">
        <tbody>
        <tr>
            <td  style="width: 300px; text-align: left;" ><label>回访记录：<span style="margin-left: 50px; display: inline; font-size: 15px;"> 时间</span></label></td>
            <td><label>内容</label></td>
        </tr>
        <tr>
            <td class="td1 " >2016年02月28号</td>
            <td>暂时无计划，打算下个月在装修，但没有定具体时间。</td>
        </tr>
        <tr>
            <td class="td1 " >2016年02月28号</td>
            <td>暂时无计划，打算下个月在装修，但没有定具体时间。</td>
        </tr>
        <tr>
            <td class="td1 " >2016年02月28号</td>
            <td>暂时无计划，打算下个月在装修，但没有定具体时间。</td>
        </tr>
        </tbody>
    </table>
</div>
</body>
</html>
