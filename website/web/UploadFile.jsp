<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/6/23
  Time: 19:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <link rel="icon"href="images/logo.png"type="image/x-icon">
    <link rel="shortcut icon"href="images/logo.png"type="image/x-icon">
    <title>文件上传</title>
    <link rel="stylesheet" href="css/buttons.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/input.css" type="text/css" media="all">
</head>

<body>
    <form action="UploadServlet" method="post" enctype="multipart/form-data" style="text-align: center;">
        <a href="javascript:;" class="file">
            上传文件<input type="file" name="uploadfile">
        </a>
        <br/>
        <br/>
        <button type="submit" class="button button-3d button-primary button-rounded">提交</button>
        <button type="button" onclick="history.back(-1)" class="button button-3d button-primary button-rounded">取消</button>
    </form>
</body>
</html>
