<%--
  Created by IntelliJ IDEA.
  User: ablat
  Date: 2017-11-29
  Time: 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath();%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <link href="${path}/css/style.css" rel="stylesheet" type="text/css"/>
    <script language="JavaScript" src="${path}/js/jquery.js"></script>
    <script language="JavaScript" src="${path}/js/common.js"></script>

    <title>密码修改</title>
</head>
<body>

<div class="notice">
    <div class="gonggao" style="float: left;">公告 &nbsp;&nbsp;&nbsp;丨&nbsp;&nbsp;&nbsp;</div>
    <div class="txtMarquee-left">
        <div class="bd">
            <ul class="infoList">
                <li><a href="${path}/WEB-INF/view/notice_details.jspe_details.jsp">中国打破了世界软件巨头规则</a><span>[11-11]</span></li>
                <li><a href="${path}/WEB-INF/view/notice_details.jspe_details.jsp">施强：高端专业语言教学</a><span>[11-11]</span></li>
                <li><a href="${path}/WEB-INF/view/notice_details.jspe_details.jsp">新加坡留学，国际双语课程</a><span>[11-11]</span></li>
                <li><a href="${path}/WEB-INF/view/notice_details.jspe_details.jsp">高考后留学日本名校随你选</a><span>[11-11]</span></li>
                <li><a href="${path}/WEB-INF/view/notice_details.jspe_details.jsp">教育培训行业优势资源推介</a><span>[11-11]</span></li>
                <li><a href="${path}/WEB-INF/view/notice_details.jspe_details.jsp">女友坚持警局完婚不抛弃</a><span>[11-11]</span></li>
            </ul>
        </div>
    </div>
</div>
<div style="margin:0 20px;">
    <ul class="build-notice">
        <li><label>原密码：</label><input name="" type="text" class="dfinput" value="请输入原密码" style="color: #b5b5b5"/></li>
        <li><label>新密码：</label><input name="" type="text" class="dfinput" value="请输入新密码" style="color: #b5b5b5"/></li>
        <li><a class="btnstyle" style="margin: 60px 80px">确定</a></li>
    </ul>

</div>
</body>
<!--公告滚动js-->
<script type="text/javascript" src="${path}/js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript">
    jQuery(".txtMarquee-left").slide({
        mainCell: ".bd ul",
        autoPlay: true,
        effect: "leftMarquee",
        vis: 2,
        interTime: 50
    });
</script>
</html>
