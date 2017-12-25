<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/25 0025
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
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
            <th>物品编号</th>
            <th>物品名称</th>
            <th>物品单价</th>
            <th>物品可用状态</th>
            <th>物品图片</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
                <tr class="hui">
                    <td><input name="" type="checkbox" value=""/></td>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>4</td>
                    <td>5</td>
                    <td><button class="tablelink" id="change" onclick="change()" style="cursor: pointer">修改</button></td>
                </tr>
            <tr>没有任何机器！</tr>
        </tbody>
    </table>
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