<%--
  Created by IntelliJ IDEA.
  User: pangd
  Date: 2018/6/23
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title></title>
    <meta charset="utf-8">

    <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/grid.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/jquery-ui-1.8.5.custom.css" type="text/css" media="all">

    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="js/jquery.cycle.all.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.8.5.custom.min.js"></script>
    <script type="text/javascript">
        var video, output;
        var scale = 0.6;
        var initialize = function () {
            output = document.getElementById("output");
            video = document.getElementById("video");
            video.addEventListener('loadeddata', captureImage);
        };
        var captureImage = function () {
            var canvas = document.createElement("canvas");
            canvas.width = video.videoWidth * scale;
            canvas.height = video.videoHeight * scale;
            canvas.getContext('2d').drawImage(video, 0, 0, canvas.width, canvas.height);
            var img = document.createElement("img");
            img.src = canvas.toDataURL("image/png");
            output.appendChild(img);
        };
        initialize();
    </script>
</head>

<body>
<%@ include file="db.jsp" %>

<%
    //表名
    String tableName1 = "Index2intor";
    String tableName2 = "Index2news";
    String tableName3 = "Index2activity";
    String[] hrefs = new String[15];
    String[] titles = new String[15];
    for (int i = 0; i < 15; i++) {
        hrefs[i] = "";
        titles[i] = "";
    }
%>
<%

    String sql = "SELECT * FROM " + tableName2;
    ResultSet rs = stmt.executeQuery(sql);
    int i = 0;
    while (rs.next()) {
        if (i > 14)
            break;
        titles[i] = rs.getString(2);
        hrefs[i] = rs.getString(3);
        i += 1;
    }
    rs.close();
    stmt.close();
    conn.close();
%>
<%
    String readmore = "";
    String imageUrl1 = "";
    String imageUrl2 = "";
    String body1 = "";
    String body2 = "";
    String importnew = "";
    String video = "";
    String width = "600";
    String height = "600";
%>
<%
    conn = DriverManager.getConnection(url);
    stmt = conn.createStatement();
    sql = "SELECT * FROM " + tableName1;
    rs = stmt.executeQuery(sql);
    i = 0;
    while (rs.next()) {
        if (i > 0)
            break;
        readmore = rs.getString(2);
        imageUrl1 = rs.getString(3);
        imageUrl2 = rs.getString(4);
        body1 = rs.getString(5);
        body2 = rs.getString(6);
        importnew = rs.getString(7);
        video = rs.getString(8);
        width = rs.getString(9);
        height = rs.getString(10);
        i += 1;
    }
    rs.close();
    stmt.close();
    conn.close();
%>
<%
    String[] hrefs_activity = new String[5];
    String[] titles_activity = new String[5];
    for (i = 0; i < 5; i++) {
        hrefs_activity[i] = "";
        titles_activity[i] = "";
    }
%>
<%
    conn = DriverManager.getConnection(url);
    stmt = conn.createStatement();
    sql = "SELECT * FROM " + tableName3;
    rs = stmt.executeQuery(sql);
    i = 0;
    while (rs.next()) {
        if (i > 4)
            break;
        titles_activity[i] = rs.getString(2);
        hrefs_activity[i] = rs.getString(3);
        i += 1;
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
                    <li><a href="index1.jsp">志愿者APP</a></li>
                    <li><a href="index2.jsp" class="current">志愿者网</a></li>
                    <li><a href="index3.jsp">雷锋热线</a></li>
                    <li><a href="index4.jsp">公益活动</a></li>
                    <li><a href="index5.jsp">公益广告</a></li>
                    <li><a href="video.jsp">视频展示</a></li>
                    <li><a href="publish.jsp">发布文章</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <section class="adv-content">
        <div class="container">
            <ul class="breadcrumbs">
                <li>咨询</li>
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
                    <h2>项目介绍</h2>
                    <div class="img-box">
                        <figure><img src="<%=imageUrl1%>" alt="" width="250" height="150"></figure>
                        <p style="word-wrap: break-word; font-size: large; line-height: 30px"><%=body1%>
                        </p>
                    </div>
                    <div class="img-box">
                        <figure><img src="<%=imageUrl2%>" alt="" width="250" height="150"></figure>
                        <p style="word-wrap: break-word; font-size: large; line-height: 30px"><%=body2%>
                        </p>
                    </div>
                    <a href="<%=readmore%>" class="more" target="_blank">了解更多</a>
                </div>
            </div>
        </div>
    </div>
    <div class="middle">
        <div class="container">
            <div class="clearfix">
                <div style="position:relative"><br>
                    <video id="video" width="<%=width%>" height="<%=height%>" controls>
                        <source src="<%=video%>" type="video/mp4"/>
                    </video>
                    <br>
                    <div id="output" style="position:absolute;left:0;left:0"><br></div>
                    <br>
                </div>
            </div>
        </div>
    </div>
    <div class="top">
        <div class="container">
            <div class="clearfix">
                <div class="grid5 first">
                    <h2>新闻专栏</h2>
                    <div class="img-wrap">
                        <figure><img src="images/2page-img3.jpg" alt=""></figure>
                    </div>
                    <p style="word-wrap: break-word">欢迎来到志愿者网的新闻专栏，我们讲会
                        第一时间为你们送上全球各地的新闻。</p>
                </div>
                <div class="grid9">
                    <h2>热点新闻</h2>
                    <p style="word-wrap: break-word"><%=importnew%></p>
                    <div class="clearfix">
                        <div class="grid3 first">
                            <ul class="list3">
                                <li><a target="_blank" href="<%=hrefs[0]%>"><%=titles[0]%>
                                </a></li>
                                <li><a target="_blank" href="<%=hrefs[1]%>"><%=titles[1]%>
                                </a></li>
                                <li><a target="_blank" href="<%=hrefs[2]%>"><%=titles[2]%>
                                </a></li>
                                <li><a target="_blank" href="<%=hrefs[3]%>"><%=titles[3]%>
                                </a></li>
                                <li><a target="_blank" href="<%=hrefs[4]%>"><%=titles[4]%>
                                </a></li>
                            </ul>
                        </div>
                        <div class="grid3">
                            <ul class="list3">
                                <li><a target="_blank" href="<%=hrefs[5]%>"><%=titles[5]%>
                                </a></li>
                                <li><a target="_blank" href="<%=hrefs[6]%>"><%=titles[6]%>
                                </a></li>
                                <li><a target="_blank" href="<%=hrefs[7]%>"><%=titles[7]%>
                                </a></li>
                                <li><a target="_blank" href="<%=hrefs[8]%>"><%=titles[8]%>
                                </a></li>
                                <li><a target="_blank" href="<%=hrefs[9]%>"><%=titles[9]%>
                                </a></li>
                            </ul>
                        </div>
                        <div class="grid3">
                            <ul class="list3">
                                <li><a target="_blank" href="<%=hrefs[10]%>"><%=titles[10]%>
                                </a></li>
                                <li><a target="_blank" href="<%=hrefs[11]%>"><%=titles[11]%>
                                </a></li>
                                <li><a target="_blank" href="<%=hrefs[12]%>"><%=titles[12]%>
                                </a></li>
                                <li><a target="_blank" href="<%=hrefs[13]%>"><%=titles[13]%>
                                </a></li>
                                <li><a target="_blank" href="<%=hrefs[14]%>"><%=titles[14]%>
                                </a></li>
                            </ul>
                        </div>
                    </div>
                    <a target="_blank"
                       href="http://zqb.cyol.com/html/2017-08/11/nbs.D110000zgqnb_01.htm"
                       class="more">了解更多</a>
                </div>
            </div>
        </div>
    </div>
    <div class="middle">
        <div class="container">
            <div class="clearfix">
                <div class="grid9">
                    <h2>专题活动</h2>
                    <div class="clearfix">
                        <div class="grid9 first">
                            <ul class="list3" style="line-height: 35px;">
                                <li><a style="font-size: xx-large" target="_blank"
                                       href="<%=hrefs_activity[0]%>"><%=titles_activity[0]%>
                                </a></li>
                                <li><a style="font-size: xx-large" target="_blank"
                                       href="<%=hrefs_activity[1]%>"><%=titles_activity[1]%>
                                </a></li>
                                <li><a style="font-size: xx-large" target="_blank"
                                       href="<%=hrefs_activity[2]%>"><%=titles_activity[2]%>
                                </a></li>
                                <li><a style="font-size: xx-large" target="_blank"
                                       href="<%=hrefs_activity[3]%>"><%=titles_activity[3]%>
                                </a></li>
                                <li><a style="font-size: xx-large" target="_blank"
                                       href="<%=hrefs_activity[4]%>"><%=titles_activity[4]%>
                                </a></li>
                            </ul>
                        </div>
                    </div>
                    <a href="http://www.hnvs.cn/!" target="_blank" class="more">了解更多</a>
                </div>
            </div>
        </div>
    </div>
</section>
<%@ include file="footer.jsp" %>



</body>

</html>
