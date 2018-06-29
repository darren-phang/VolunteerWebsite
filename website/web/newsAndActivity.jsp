<%--
  Created by IntelliJ IDEA.
  User: pangd
  Date: 2018/6/25
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.sun.org.apache.xpath.internal.operations.Or" %>
<html>
<head>
    <title>志愿者服务中心</title>
    <meta charset="utf-8">
    <link rel="icon"href="images/logo.png"type="image/x-icon">
    <link rel="shortcut icon"href="images/logo.png"type="image/x-icon">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/grid.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/jquery-ui-1.8.5.custom.css" type="text/css" media="all">
    <script type="text/javascript" src="js/html5.js"></script>
</head>
<body>
<%@include file="db.jsp"%>
<%@ include file="logincookie.jsp"%>
<%!
    String articel;
    String image_url;
    String organizer;
    String artic_title;
    String vedio_url;
    String OrganOrWriter;
%>

<%
        //表名
    int id = Integer.parseInt(request.getParameter("id"));
    String tableName;
    if (request.getParameter("action").equals("activity"))
    {
        OrganOrWriter = "组织者";
        tableName = "Activities";
    }
    else {
        OrganOrWriter = "作者";
        tableName = "NEWS";
    }
    String sql = "SELECT * FROM " + tableName + " where id = ?;";
    PreparedStatement ps=conn.prepareStatement(sql);
    ps.setInt(1,id);
    ResultSet rs = ps.executeQuery();
    while (rs.next()) {
        organizer = rs.getString(2);
        articel = rs.getString(3);
        artic_title = rs.getString(4);
        image_url = rs.getString(5);
        vedio_url = rs.getString(6);
    }
    rs.close();
    ps.close();
    conn.close();
%>


<header>
    <nav>
        <div class="container">
            <div class="wrapper">
                <h1><a href="index.jsp"><strong>志愿者</strong>服务</a></h1>
                <ul>
                    <li><a href="index.jsp">文明你我</a></li>
                    <li><a href="index1.jsp">志愿者APP</a></li>
                    <li><a href="index2.jsp">志愿者网</a></li>
                    <li><a href="index3.jsp">雷锋热线</a></li>
                    <li><a href="index3.jsp">公益活动</a></li>
                    <li><a href="index3.jsp">公益广告</a></li>
                    <li><a href="video.jsp">视频展示</a></li>
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

<section id="content">
    <div class="top">
        <div class="container">
            <div class="clearfix">
                <div class="grid9">
                    <h2 style="line-height: 35px"><%=artic_title%></h2>
                    <div class="img-box">
                        <figure id="img1"><img src="images/userImg/<%=image_url%>" alt="" height="200" width="300"></figure>
                        <p style="word-wrap: break-word; font-size: large; line-height: 30px"><%=articel%>
                        </p>
                        <br>
                        <div style="text-align: right; font-size: x-large"><%=OrganOrWriter%>:<%=organizer%></div>
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
