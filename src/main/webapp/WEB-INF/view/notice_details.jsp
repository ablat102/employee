<%--
  Created by IntelliJ IDEA.
  User: ablat
  Date: 2017-11-29
  Time: 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<% String path = request.getContextPath();%>
<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit">
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css"/>
<script language="JavaScript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<title>公告详情</title>
</head>

<body>

<div class="notice">
    <div class="gonggao" style="float: left;">公告 &nbsp;&nbsp;&nbsp;丨&nbsp;&nbsp;&nbsp;</div>
    <div class="txtMarquee-left">
        <div class="bd">
            <ul class="infoList">
                <li><a href="${pageContext.request.contextPath}/notice_details">中国打破了世界软件巨头规则</a><span>[11-11]</span></li>
                <li><a href="${pageContext.request.contextPath}/notice_details">施强：高端专业语言教学</a><span>[11-11]</span></li>
                <li><a href="${pageContext.request.contextPath}/notice_details">新加坡留学，国际双语课程</a><span>[11-11]</span></li>
                <li><a href="${pageContext.request.contextPath}/notice_details">高考后留学日本名校随你选</a><span>[11-11]</span></li>
                <li><a href="${pageContext.request.contextPath}/notice_details">教育培训行业优势资源推介</a><span>[11-11]</span></li>
                <li><a href="${pageContext.request.contextPath}/notice_details">女友坚持警局完婚不抛弃</a><span>[11-11]</span></li>
            </ul>
        </div>
    </div>
</div>
<div style="margin:0 20px;">
    <div class="notice-details">
        <h1>标题标题表标题标题标题标题表标题标题标题标题表标题标题标题标题表标题</h1>
        <p>发布对象：设计部</p>
        <div>
            春去春又回，花谢花又开。尘世的故事每一天都在上演着悲欢离合，相似的故事不同的主角，导演还是我们每一个自己。其实，人生这部戏，结局早已明了，只是每个人的心态不同而已。人生天地间，忽如远行客。要知道，你拥有的今天弥足珍贵，因为逝去的昨天已一去不复返。

            陌上的春色已然葱茏，街边的柳色青了又青，南归的燕子已在檐角欢呼，桃花也在枝头初绽嫣红。推开窗户，我的窗前又落下了昨夜春风来过的痕迹，相信窗台上那几页不知从何处飞来的，更不知是谁家孩子的旧画稿定是不会骗我的。伸手，触摸不到红尘的温暖。低眉，兀自清欢，在尘埃里独自花开花落。

            午后的阳光，暖暖地洒在窗下，一直照进我的心里。我静倚着春天的门楣，安静地解读着一本老旧泛黄的诗集。

            “如果有来生，要做一棵树，站成永恒。没有悲欢的姿势，一半在尘土里安详，一半在风里飞扬；一半洒落荫凉，一半沐浴阳光。非常沉默、非常骄傲。从不依靠、从不寻找。
        </div>
    </div>
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