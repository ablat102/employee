<%--
  Created by IntelliJ IDEA.
  User: ablat
  Date: 2017-11-29
  Time: 11:04
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
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css"/>
    <script language="JavaScript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script language="JavaScript" src="${pageContext.request.contextPath}/js/select.js"></script>
    <script language="JavaScript" src="${pageContext.request.contextPath}/js/common.js"></script>
    <title>人员管理</title>
    <script type="text/javascript">

        $(function () {
            //点击转派弹框
            $(".delete").click(function () {
                if ($(":checkbox:checked").length == 0) {
                    alert("请选择要删除的员工")
                } else {

                }
            });

        });
    </script>
</head>
<body>
<div class="notice">
    <div class="gonggao" style="float: left;">公告 &nbsp;&nbsp;&nbsp;丨&nbsp;&nbsp;&nbsp;</div>
    <div class="txtMarquee-left">
        <div class="bd">
            <ul class="infoList">
                <li><a href="${pageContext.request.contextPath}/notice_details.jsp">中国打破了世界软件巨头规则</a><span>[11-11]</span></li>
                <li><a href="${pageContext.request.contextPath}/notice_details.jsp">施强：高端专业语言教学</a><span>[11-11]</span></li>
                <li><a href="${pageContext.request.contextPath}/notice_details.jsp">新加坡留学，国际双语课程</a><span>[11-11]</span></li>
                <li><a href="${pageContext.request.contextPath}/notice_details.jsp">高考后留学日本名校随你选</a><span>[11-11]</span></li>
                <li><a href="${pageContext.request.contextPath}/notice_details.jsp">教育培训行业优势资源推介</a><span>[11-11]</span></li>
                <li><a href="${pageContext.request.contextPath}/notice_details.jsp">女友坚持警局完婚不抛弃</a><span>[11-11]</span></li>
            </ul>
        </div>
    </div>
</div>
<div style="margin:0 20px;">
    <div class="btngroups">
        <div><a href="build_hr.html">添加员工</a><a style="margin-left: 20px;" class="delete">删除</a></div>
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
            <th>员工号</th>
            <th>姓名</th>
            <th>性别</th>
            <th>所在部门</th>
            <th>分部</th>
            <th>联系电话</th>
            <th>qq</th>
            <th>出生日期</th>
            <th>邮箱</th>
            <th>人员状态</th>

        </tr>
        </thead>
        <tbody>
        <tr>
            <td><input name="" type="checkbox" value=""/></td>
            <td>0001</td>
            <td>何波</td>
            <td>男</td>
            <td>设计部</td>
            <td>一部</td>
            <td>12564547878</td>
            <td>215678995</td>
            <td>19920506</td>
            <td>2156478958@qq.com</td>
            <td>已离职</td>

        </tr>

        <tr>
            <td><input name="" type="checkbox" value=""/></td>
            <td>0001</td>
            <td>何波</td>
            <td>男</td>
            <td>设计部</td>
            <td>一部</td>
            <td>12564547878</td>
            <td>215678995</td>
            <td>19920506</td>
            <td>2156478958@qq.com</td>
            <td>正在职</td>
        </tr>

        <tr>
            <td><input name="" type="checkbox" value=""/></td>
            <td>0001</td>
            <td>何波</td>
            <td>男</td>
            <td>设计部</td>
            <td>一部</td>
            <td>12564547878</td>
            <td>215678995</td>
            <td>19920506</td>
            <td>2156478958@qq.com</td>
            <td>正在职</td>
        </tr>

        <tr>
            <td><input name="" type="checkbox" value=""/></td>
            <td>0001</td>
            <td>何波</td>
            <td>男</td>
            <td>设计部</td>
            <td>一部</td>
            <td>12564547878</td>
            <td>215678995</td>
            <td>19920506</td>
            <td>2156478958@qq.com</td>
            <td>正在职</td>
        </tr>

        <tr>
            <td><input name="" type="checkbox" value=""/></td>
            <td>0001</td>
            <td>何波</td>
            <td>男</td>
            <td>设计部</td>
            <td>一部</td>
            <td>12564547878</td>
            <td>215678995</td>
            <td>19920506</td>
            <td>2156478958@qq.com</td>
            <td>正在职</td>
        </tr>

        </tbody>
    </table>

    <div class="pagin">
        <div class="message">共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
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


<!--转派弹框-->
<div class="bgcover"></div>
<div class="show">
    <div class="content">
        <div>
            <label>是否转派？</label>
            <input type="radio" value="1" name="turn" style="margin-left: 80px; ">是
            <input type="radio" value="2" name="turn">否

        </div>
        <div class="turn-select" style="">
            <div style="margin-top: 15px;">
                <label>部&nbsp;&nbsp;&nbsp;&nbsp;门：</label>
                <select id="sel1"
                        style="width: 200px; height: 35px; border: 1px solid #b5b5b5; color: #1c7ee1;"></select>
            </div>
            <div style="margin-top: 15px;">
                <label style="letter-spacing: 1px;">子部门：</label>
                <select id="sel2" style="width: 200px; height: 35px; border: 1px solid #b5b5b5; color: #1c7ee1;">

                </select>
            </div>
            <div style="margin-top: 15px;">
                <label>人&nbsp;&nbsp;&nbsp;&nbsp;员：</label>
                <select id="sel3" style="width: 200px; height: 35px; border: 1px solid #b5b5b5; color: #1c7ee1;">
                </select>
            </div>
        </div>

        <a class="btnstyle1 ensure" id="" style="margin-top: 50px;">确定</a>

    </div>

</div>
</body>
<!--公告滚动js-->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.SuperSlide.2.1.1.js"></script>
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
