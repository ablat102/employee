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
    <link href="${pageContext.request.contextPath}/res/css/style.css" rel="stylesheet" type="text/css"/>
    <script language="JavaScript" src="${pageContext.request.contextPath}/res/js/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/js/My97DatePicker/WdatePicker.js"
            type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/res/js/product.js" type="text/javascript"></script>
    <title>添加商品</title>
    <style type="">
        .table-user {
            border: solid 1px #959595;
            width: 100%;
            clear: both;
        }

        .table-user td {
            line-height: 45px;
            text-indent: 11px;
            border-right: solid 1px #959595;
            border-bottom: solid 1px #959595;
            font-size: 15px;
        }

        .table-user td label {
            font-size: 15px;
            color: #3a80d7;
        }

        .table-user td input {
            width: 300px;
            border: 1px solid #c8c8c8;
            height: 30px;
            vertical-align: middle;
            line-height: 30px;
            margin-top: -3px;
        }

        .table-user td i {
            width: 35px;
            height: 35px;
            display: inline-block;
            background: url("${pageContext.request.contextPath}/res/images/date.png");
            background-size: 100%;
            vertical-align: middle;
        }

        .table-user td textarea {
            width: 85%;
            border: 1px solid #c8c8c8;
            margin: 10px 0;
            padding: 10px;
        }

        .table-user1 {
            border: solid 1px #959595;
            width: 100%;
            clear: both;
            border-top: none;
        }

        .table-user1 td {
            line-height: 45px;
            text-indent: 11px;
            border-right: solid 1px #959595;
            border-bottom: solid 1px #959595;
            font-size: 15px;
            text-align: center;
        }

        .table-user1 td label {
            font-size: 15px;
            color: #3a80d7;
        }

        .table-user1 .td1 {
            width: 300px;
            font-size: 15px;
        }
    </style>
</head>
<body>

<div style="margin:0 60px;">
    <div class="btngroups">
        <div><a id="addProduct">确定</a></div>
        <div class="clear"></div>
    </div>
    <table class="table-user">

        <tbody>
        <tr>
            <td>
                <label>物品名称：</label>
                <input type="text" class="productName" name="productName" placeholder="请输入回收物品名称"/>
                <label class="productNameErr" style="color: red;">*必填，物品名称必须是汉字</label>
            </td>
            <td><label>是否回收：</label>
                是<input type="radio" name="status" value="1" checked style="width: 30px;height: 20px;"/>
                否<input type="radio" name="status" value="0" style="width: 30px;height: 20px;"/>
            </td>
        </tr>
        <tr>
            <td>
                <label>回收单价：</label>
                <input type="text" placeholder="请输入回收单价/元" name="productPrice"
                                           class="productPrice"/>
                <label class="productPriceErr" style="color: red;">*必填，物品单价是只能数字组成</label>
            </td>
            <td>
                <%--<label>最低回收量：</label>--%>
                <%--<input type="text" placeholder="请输入最低回收量/Kg" name="productWeight"--%>
                                           <%--class="productWeight"/>--%>
                <%--<label class="productWeightErr" style="color: red;">*必填，物品重量只能是数字组成</label>--%>
                    <form action="" method="post" enctype="multipart/form-data">
                        <input type="file" name="picture" accept="image/gif,image/jpeg,image/png ">
                    </form>
            </td>
        </tr>

        </tbody>
    </table>
    <table class="table-user1">
        <tbody>
        <tr>
            <td>备注</td>
        </tr>
        <tr>
            <td style="text-align: left">
                <ul>
                    <li>1.</li>
                    <li>2.</li>
                    <li>3.</li>
                </ul>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<script>


</script>

</body>
</html>
