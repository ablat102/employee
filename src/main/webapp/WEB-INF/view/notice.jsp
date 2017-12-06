<%--
  Created by IntelliJ IDEA.
  User: ablat
  Date: 2017-11-29
  Time: 10:30
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
    <link href="../../css/style.css" rel="stylesheet" type="text/css"/>
    <script language="JavaScript" src="${path}/js/jquery.js"></script>
    <script language="JavaScript" src="${path}/js/common.js"></script>
    <title>新建公告</title>
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
    <div class="btngroups">
        <div><a href="${path}/WEB-INF/view/new_notice.jspew_notice.jsp">新建公告</a>
            <a style="margin-left: 20px;">删除</a></div>
        <div class="search">
            <input type="text" value="请输入搜索内容"/>
            <a>搜索</a>
        </div>
        <div class="clear"></div>
    </div>
    <table class="tablelist">
        <thead>
        <tr>
            <th><input name="" type="checkbox" value="" class="checkall"/></th>
            <th>发送范围</th>
            <th>发送内容</th>
            <th>发送时间</th>
            <th>阅读情况</th>
            <th>操作</th>

        </tr>
        </thead>
        <tbody>
        <tr>
            <td><input name="" type="checkbox" value=""/></td>
            <td>家具部</td>
            <td>本单位联合红心美凯龙家具公司对于家具展开发展展开讨论，望家具部积极参与。</td>
            <td>2016年2月17日16:34:06</td>
            <td>2人已阅读，3人未阅读</td>
            <td><a href="${path}/WEB-INF/view/new_notice.jspew_notice.jsp" class="tablelink"> 修改</a></td>

        </tr>

        <tr>
            <td><input name="" type="checkbox" value=""/></td>
            <td>家具部</td>
            <td>本单位联合红心美凯龙家具公司对于家具展开发展展开讨论，望家具部积极参与。</td>
            <td>2016年2月17日16:34:06</td>
            <td>2人已阅读，3人未阅读</td>
            <td><a href="${path}/WEB-INF/view/new_notice.jspew_notice.jsp" class="tablelink"> 修改</a></td>
        </tr>

        <tr>
            <td><input name="" type="checkbox" value=""/></td>
            <td>家具部</td>
            <td>本单位联合红心美凯龙家具公司对于家具展开发展展开讨论，望家具部积极参与。</td>
            <td>2016年2月17日16:34:06</td>
            <td>2人已阅读，3人未阅读</td>
            <td><a href="${path}/WEB-INF/view/new_notice.jspew_notice.jsp" class="tablelink">修改</a></td>
        </tr>

        <tr>
            <td><input name="" type="checkbox" value=""/></td>
            <td>家具部</td>
            <td>本单位联合红心美凯龙家具公司对于家具展开发展展开讨论，望家具部积极参与。</td>
            <td>2016年2月17日16:34:06</td>
            <td>2人已阅读，3人未阅读</td>
            <td><a href="${path}/WEB-INF/view/new_notice.jspew_notice.jsp" class="tablelink"> 修改</a></td>
        </tr>

        <tr>
            <td><input name="" type="checkbox" value=""/></td>
            <td>家具部</td>
            <td>本单位联合红心美凯龙家具公司对于家具展开发展展开讨论，望家具部积极参与。</td>
            <td>2016年2月17日16:34:06</td>
            <td>2人已阅读，3人未阅读</td>
            <td><a href="${path}/WEB-INF/view/new_notice.jspew_notice.jsp" class="tablelink"> 修改</a></td>
        </tr>

        </tbody>
    </table>
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