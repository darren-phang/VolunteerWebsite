<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: pangd
  Date: 2018/6/25
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/grid.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/jquery-ui-1.8.5.custom.css" type="text/css" media="all">
    <script type="text/javascript" src="js/html5.js"></script>
</head>
<body>
<%!
    String articel;
    String image_url;
    String artic_title;
    String vedio_url;
%>
<%
    String userName = "JavaWeb";
//密码
    String userPasswd = "cdut6a502";
//数据库名
    String dbName = "JavaWeb";

//将数据库信息字符串连接成为一个完整的url（也可以直接写成url，分开写是明了可维护性强）
//    String url = "jdbc:mysql://108.160.128.18/" + dbName + "?user=" + userName + "&password=" + userPasswd;
    String url = "jdbc:mysql://39.108.183.209/" + dbName + "?user=" + userName + "&password=" + userPasswd;
/*//数据库信息
    String userName = "cwj";
//密码
    String userPasswd = "strive123";
//数据库名
    String dbName = "javaweb";

//将数据库信息字符串连接成为一个完整的url（也可以直接写成url，分开写是明了可维护性强）
    String url = "jdbc:mysql://localhost/" + dbName + "?user=" + userName + "&password=" + userPass*/

    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection conn = DriverManager.getConnection(url);
%>
<%
    //表名
    int id = Integer.parseInt(request.getParameter("id"));
    String sql = "SELECT * FROM NEWS where id = ?;";
    PreparedStatement ps=conn.prepareStatement(sql);
    ps.setInt(1,id);
    ResultSet rs = ps.executeQuery();
    while (rs.next()) {
        artic_title = rs.getString(2);
        image_url = rs.getString(3);
        vedio_url = rs.getString(4);
        articel = rs.getString(5);
    }
    rs.close();
    ps.close();
    conn.close();
//

//    rs.close();
//    stmt.close();
//    conn.close();
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
    <div class="top">
        <div class="container">
            <div class="clearfix">
                <div class="grid9">
                    <h2 style="line-height: 35px"><%=artic_title%></h2>
                    <div class="img-box">
                        <figure id="img1"><img src="<%=image_url%>" alt="" height="200" width="300"></figure>
                        <p style="word-wrap: break-word; font-size: large; line-height: 30px"><%=articel%>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="middle" id="video1">
        <div class="container">
            <div class="clearfix">
                <div class="grid3">
                    <video id="video" width="800" height="600" controls>
                        <source src="<%=vedio_url%>" type="video/mp4"/>
                    </video>
                </div>
            </div>
        </div>
    </div>
</section>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.cycle.all.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.5.custom.min.js"></script>
<%@ include file="footer.jsp" %>
<script type="text/javascript">
    var image_url;
    var video_url;
    image_url = "<%=image_url%>";
    video_url = "<%=vedio_url%>";
    console.log(video_url);
    function display_or_not() {
        if (image_url=="null"){
            document.getElementById("img1").style.display = "none";
        }
        if (video_url=="null"){
            document.getElementById("video1").style.display = "none";
        }
    }

    window.onload = display_or_not();
</script>
</body>
</html>
