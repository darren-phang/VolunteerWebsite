<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/6/25
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" autoFlush="false" buffer="300kb" %>
<%@ page import="java.io.*"%>
<%@ page import="java.io.IOException"%>
<html>
<head>
    <title>图片浏览</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta charset="UTF-8">
    <link rel="icon" href="images/logo.png" type="image/x-icon">
    <link rel="shortcut icon" href="images/logo.png" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/magnific-popup.css" rel="stylesheet">
    <link href="css/templatemo_style.css" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/grid.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/jquery-ui-1.8.5.custom.css" type="text/css" media="all">
</head>
<body>

<%!
    //文件绝对路径
    String dir="E:\\学习文件\\第一次实训\\javaWeb\\website\\web\\images";
    public void travelDirectory(String directory,JspWriter out) {
        int index = 0;
        File dir = new File(directory);
        if (dir.isFile())
            return;
        File[] files = dir.listFiles();
        try {
            for (int i = 0; i < (files.length / 8) + 1; i++) {

                if (i == 0)
                    out.println("<div class=\"portfolio-page\" id=\"page-" + (i + 1) + "\">");
                else
                    out.println("<div class=\"portfolio-page\" id=\"page-" + (i + 1) + "\" style=\"display:none;\">");
                for (int j = 0; j < 8; j++) {
                    if (files[index].isDirectory())
                        travelDirectory(files[index].getAbsolutePath(), out);
                    out.println("<div class=\"portfolio-group\"> " +
                            "<a class=\"portfolio-item\" href=\"images/" +
                            files[index].getName() +
                            "\"><img src=\"images/" +
                            files[index].getName() +
                            "\"><div class=\"detail\"><h3>图片名称</h3><p>图片介绍</p><span class=\"btn\">View</span></div> </a> </div>");
                    if (index == files.length - 1)
                        break;
                    else
                        index++;
                }
                out.println("</div>");
            }
        } catch (IOException e) {
            System.out.println("错误提示：" + e.getMessage());
        }
    }

    public void countNum(String directory,JspWriter out) {
        File dir = new File(directory);
        if(dir.isFile())
            return;
        File [] files = dir.listFiles();
        try {
            out.println("<ul class='nav'>");
            for (int k = 0; k < (files.length / 8) + 1; k++) {
                if (k == 0)
                    out.println("<li class='active'>1</li>");
                else
                    out.println("<li>" + (k + 1) +"</li>");
            }
            out.println("</ul>");
        }
        catch (IOException e) {
            System.out.println("错误提示：" + e.getMessage());
        }
    }
%>
<%@ include file="logincookie.jsp"%>

<header>
    <nav>
        <div class="container">
            <div class="wrapper">
                <h1><a href="index.jsp"><strong>志愿者</strong>服务</a></h1>
                <ul>
                    <li><a href="index.jsp" class="current">文明你我</a></li>
                    <li><a href="index1.jsp">志愿者APP</a></li>
                    <li><a href="index2.jsp">志愿者网</a></li>
                    <li><a href="index3.jsp">雷锋热线</a></li>
                    <li><a href="index4.jsp">公益活动</a></li>
                    <li><a href="index5.jsp">公益广告</a></li>
                    <li><a href="video.jsp">视频展示</a></li>
                    <li><a href="Image.jsp">图片展示</a></li>
                    <li><a href="publish.jsp">发布文章</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <section class="adv-content">
        <div class="container">
            <ul class="breadcrumbs">
                <li>首页</li>
            </ul>
            <form action="" id="search-form">
                <fieldset>
                    <div id="login1">
                        <a href="LoginAndRegister.jsp?action=login">登陆</a>&nbsp;&nbsp;
                        <a href="LoginAndRegister.jsp?action=register">去注册</a>
                    </div>
                    <div id="login2" style="display: none">
                        欢迎你&nbsp; <a href="index7.jsp"><%=uesrname%></a>&nbsp;
                        <button id="exit" onclick="logout()">退出登陆</button>
                    </div>

                </fieldset>
            </form>
        </div>
    </section>
</header>
<div class="main-container">
    <div class="content-container">
        <header>
            <h1 class="center-text">图片预览</h1>
        </header>
        <div id="portfolio-content" class="center-text">
            <%
                travelDirectory(dir,out);
            %>
            <div class="pagination">
                <%
                    countNum(dir,out);
                %>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/modernizr.2.5.3.min.js"></script>
<script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="js/templatemo_script.js"></script>
<script type="text/javascript">
    $(function () {
        $('.pagination li').click(changePage);
        $('.portfolio-item').magnificPopup({
            type: 'image',
            gallery:{
                enabled:true
            }
        });
    });
</script>
<script type="text/javascript">
    var login = <%=has_login%>;
    if (login){
        document.getElementById('login1').style.display = "none";
        document.getElementById('login2').style.display = "";
    }
    else {
        document.getElementById('login2').style.display = "none";
        document.getElementById('login1').style.display = "";
    }

    function logout(){
        var myDate=new Date();
        myDate.setTime(-1000);//设置时间
        var data=document.cookie;
        var dataArray=data.split("; ");
        for(var i=0;i<dataArray.length;i++){
            var varName=dataArray[i].split("=");
            document.cookie=varName[0]+"=''; expires="+myDate.toGMTString();
        }

    }
</script>

</body>
</html>
