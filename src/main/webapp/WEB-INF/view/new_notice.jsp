<%--
  Created by IntelliJ IDEA.
  User: ablat
  Date: 2017-11-29
  Time: 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<% String path = request.getContextPath();%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <link href="${path}/css/style.css" rel="stylesheet" type="text/css"/>
    <script language="JavaScript" src="${path}/js/jquery.js"></script>
    <title>Title</title>
</head>
<body>

<div class="notice">
    <div class="gonggao" style="float: left;">公告 &nbsp;&nbsp;&nbsp;丨&nbsp;&nbsp;&nbsp;</div>
    <div class="txtMarquee-left">
        <div class="bd">
            <ul class="infoList">
                <li><a href="${path}/WEB-INF/view/notice_details.jsp">中国打破了世界软件巨头规则</a><span>[11-11]</span></li>
                <li><a href="${path}/WEB-INF/view/notice_details.jsp">施强：高端专业语言教学</a><span>[11-11]</span></li>
                <li><a href="${path}/WEB-INF/view/notice_details.jsp">新加坡留学，国际双语课程</a><span>[11-11]</span></li>
                <li><a href="${path}/WEB-INF/view/notice_details.jsp">高考后留学日本名校随你选</a><span>[11-11]</span></li>
                <li><a href="${path}/WEB-INF/view/notice_details.jsp">教育培训行业优势资源推介</a><span>[11-11]</span></li>
                <li><a href="${path}/WEB-INF/view/notice_details.jsp">女友坚持警局完婚不抛弃</a><span>[11-11]</span></li>
            </ul>
        </div>
    </div>
</div>
<div style="margin:0 20px;">
    <ul class="build-notice">
        <li><label>公告标题：</label><input name="" type="text" class="dfinput" placeholder="请填写公告标题"/></li>
        <li><label>公告内容：</label><textarea rows="8" cols="" placeholder="请输入公告内容"></textarea></li>
        <li><label>发布对象：</label>
            <div class="release">
                <select class="select1">
                    <option>--请选择--</option>
                    <option>--设计部--</option>
                    <option>--商务部--</option>
                    <option>--家具部--</option>
                    <option>--行政部--</option>
                </select>
            </div>

        </li>


        <li><a class="btnstyle" style="margin: 60px 80px">发布公告</a></li>
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