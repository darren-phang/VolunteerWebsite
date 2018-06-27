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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/magnific-popup.css" rel="stylesheet">
    <link href="css/templatemo_style.css" rel="stylesheet" type="text/css">
</head>
<body>

<%!
    //文件绝对路径
    String dir="..\\webapps\\JavaWebapp\\web\\images";
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
</body>
</html>
