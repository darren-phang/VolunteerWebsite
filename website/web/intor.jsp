<%--
  Created by IntelliJ IDEA.
  User: pangd
  Date: 2018/6/25
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="js/html5.js"></script>

    <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/grid.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
</head>
<body>
<%!
    String articel;
    String image_url;
    String artic_title;
    String vedio_url;

%>
<%@ include file="db.jsp" %>
<%
    //表名
    String id = request.getParameter("id");
    String tableName = "NEWS";
    String sql = "SELECT * FROM " + tableName + "WHERE id =" + id;
    ResultSet rs = stmt.executeQuery(sql);
    while (rs.next()) {
        artic_title = rs.getString(2);
        image_url = rs.getString(3);
        vedio_url = rs.getString(4);
        articel = rs.getString(5);
    }
    rs.close();
    stmt.close();
    conn.close();
%>
<header>
    <nav>
        <div class="container">
            <div class="wrapper">
                <h1><a href="index.jsp"><strong>志愿者</strong>服务</a></h1>
                <ul>
                    <li><a href="index.jsp">文明你我</a></li>
                    <li><a href="index-1.jsp">志愿者APP</a></li>
                    <li><a href="index-2.jsp">志愿者网</a></li>
                    <li><a href="index-3.jsp">雷锋热线</a></li>
                    <li><a href="index-3.jsp">公益活动</a></li>
                    <li><a href="index-3.jsp">公益广告</a></li>
                    <li><a href="index5.jsp">视频展示</a></li>
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

                    <input type="text" value=""><input type="submit" value="">
                </fieldset>
            </form>
        </div>
    </section>
</header>
<section id="content">
    <div class="middle">
        <div class="container">
            <div class="clearfix">
                <div class="grid9">
                    <h3>发表文章</h3>
                    <form action="" name="title_form">
                        <textarea name="title" style="height: 30px; width: 600px; font-size: 21px" wrap="soft" ></textarea>
                        <br><br>
                        <textarea name="article" style="height: 400px; width: 800px; font-size: 20px;" wrap="soft"></textarea>
                        <a href="#">添加附件</a>
                        <div style="text-align: right">
                            <button style="text-align: center;">发表</button>
                        </div>

                    </form>
                    </div>
            </div>
        </div>
    </div>
    <div class="bottom">
        <div class="container">
            <div class="clearfix">
                <div class="grid3 first">
                    <h3>团队成员</h3>
                    <ul class="list1">
                        <li>成文杰</li>
                        <li>彭伟航</li>
                        <li>黄松涛</li>
                        <li>刘承道</li>
                        <li>聂鑫泉</li>
                    </ul>
                </div>
                <div class="grid6">
                    <h3>提交建议</h3>
                    <form action="" id="contacts-form">
                        <fieldset>
                            <div class="grid3 first">
                                <label>姓名:<br />
                                    <input type="text" value="" />
                                </label>
                                <label>E-mail:<br />
                                    <input type="email" value="" />
                                </label>
                                <label>电话:<br />
                                    <input type="text" value="" />
                                </label>
                            </div>
                            <div class="grid3">信息:<br />
                                <textarea></textarea>
                                <div class="alignright">
                                    <a href="#" class="alt" onClick="document.getElementById('contacts-form').reset()">清除</a> &nbsp; &nbsp; &nbsp;<a href="#" class="alt" onClick="document.getElementById('contacts-form').submit()">提交</a>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<footer>
    <div class="container">
        <div class="wrapper">
            <div class="copy">&copyCDUT实训 2018</div>
        </div>
    </div>
</footer>
</body>
</html>
