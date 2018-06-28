<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/6/27
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>志愿者申请</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/grid.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/jquery-ui-1.8.5.custom.css" type="text/css" media="all">
    <style type="text/css">
        .divstyle {
            width: 700px;
            height: 800px;
            position: absolute;
            top: 10%;
            left: 30%;
        }
    </style>
</head>
<body>
<%
    String username = request.getParameter("username");
%>
<div style="background-color: white; color: black" class="divstyle">
    <br>
    <h1 style="font-size: 30px" align="center">注册个人基本信息</h1><br><br>
    <form action="Submit" method="post">
        <input name="username" style="display: none;" value="<%=username%>">
        <tr>
            <td>真实姓名：</td>
            <td><input name="realname" id="realname"></td>
        </tr>
        <br><br>
        <tr>
            <td>政治面貌：</td>
            <td><select name="category" id="category">
                <option>请选择</option>
                <option value="共青团员">共青团员</option>
                <option value="中共党员">中共党员</option>
                <option value="群众">群众</option>
            </select></td>
        </tr>
        <br><br>
        <tr>
            <td>身份证号码：</td>
            <td><input name="identitycard" id="identitycard"></td>
        </tr>
        <tr>
            <td>民族：</td>
            <td><input name="nation" id="nation"></td>
        </tr>
        <br><br>
        <tr>
            <td>性别：</td>
            <td>&nbsp;&nbsp;
                <input type="radio" name="gender" value="女">&nbsp;女&nbsp;&nbsp;
                <input type="radio" name="gender" value="男">&nbsp;男
            </td>
        </tr>
        <br><br>
        <br><br>
        <tr>
            <td>手机：</td>
            <td><input name="phone" id="phone"></td>
        </tr>
        <br><br>
        <tr>
            <td>邮箱：</td>
            <td><input name="email" id="email"></td>
        </tr>
        <br><br>
        <tr>
            <td align="right" valign="top">服务类别：</td>
            <br>
            <td>
                <input type="radio" name="serverArea" value="赛会服务">&nbsp;赛会服务&nbsp;&nbsp;
                <input type="radio" name="serverArea" value="应急救援">&nbsp;应急救援&nbsp;&nbsp;
                <input type="radio" name="serverArea" value="城市运行">&nbsp;城市运行&nbsp;&nbsp;
                <input type="radio" name="serverArea" value="文化教育">&nbsp;文化教育&nbsp;&nbsp;
                <input type="radio" name="serverArea" value="关爱服务">&nbsp;关爱服务&nbsp;&nbsp;
                <input type="radio" name="serverArea" value="社区服务">&nbsp;社区服务&nbsp;&nbsp;
                <input type="radio" name="serverArea" value="绿色环保">&nbsp;绿色环保&nbsp;&nbsp;
                <input type="radio" name="serverArea" value="医疗卫生">&nbsp;医疗卫生&nbsp;&nbsp;
                <input type="radio" name="serverArea" value="其他">&nbsp;其他&nbsp;&nbsp;
            </td>
        </tr>
        <br><br>
        <button type="submit" style="text-align: center">提交申请</button>
    </form>
</div>
</body>
</html>
