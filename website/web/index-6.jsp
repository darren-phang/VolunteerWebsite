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
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="js/jquery.cycle.all.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.8.5.custom.min.js"></script>

    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">

    <link rel="stylesheet" href="css/style2.css">

    <link href="owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="owl-carousel/owl.theme.css" rel="stylesheet">

    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">

    <link rel="stylesheet" href="css/jquery-ui-1.8.5.custom.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/grid.css" type="text/css" media="all">

    <script src="js/jquery-2.1.1.js"></script>

    <script src="js/bootstrap.min.js"></script>


</head>

<body>

<%@ include file="db.jsp" %>
<%
    String getSlideSql = "SELECT * FROM video where slideVideo =1";
    ResultSet rs = stmt.executeQuery(getSlideSql);

    String[] slideVideoUrl = new String[9];
    String[] slideVideoImgUrl = new String[9];

    int i = 0;
    while (rs.next()) {
        slideVideoUrl[i] = rs.getString(2);
        slideVideoImgUrl[i] = rs.getString(3);
        i++;
    }


    String getCommonSql = "SELECT * FROM video where commonVideo =1";
    rs = stmt.executeQuery(getCommonSql);



    String[] commonVideoUrl = new String[5];
    String[] commonVideoImgUrl = new String[5];
    i = 0;
    while ( rs.next()) {
        commonVideoUrl[i] = rs.getString(2);
        commonVideoImgUrl[i] = rs.getString(3);
        i++;
    }

    String getFeatureSql = "SELECT * FROM video where featureVideo =1";
    rs = stmt.executeQuery(getFeatureSql);

    String[] featureVideoUrl = new String[2];
    String[] featureVideoImgUrl = new String[2];
    i = 0;
    while ( rs.next()) {
        featureVideoUrl[i] = rs.getString(2);
        featureVideoImgUrl[i] = rs.getString(3);
        i++;
    }

    rs.close();
    stmt.close();
    conn.close();
%>

<header>
    <!--Navigation-->
    <nav style="background-color:#1f1f1f ">
        <div class="container">
            <h1><a href="index.jsp"><strong>志愿者</strong>服务</a></h1>
            <div class="collapse navbar-collapse">
                <ul>
                    <li class="dropdown"><a href="index.jsp" class="dropdown-toggle"
                                            data-toggle="dropdown">文明你我</a>
                        <div class="dropdown-menu" style="background-color: #1f1f1f; width: 80px;">
                            <div class="dropdown-inner" style="background-color: #1f1f1f;">
                                <ul>
                                    <li><a style="color: white " href="archive.html">热门</a>
                                    </li>
                                    <li><a style="color: white " href="archive.html">最新</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>

                    <li class="dropdown"><a href="#" class="dropdown-toggle"
                                            data-toggle="dropdown">志愿者APP</a>
                        <div class="dropdown-menu" style="background-color: #1f1f1f; width: 111px">
                            <div class="dropdown-inner" style="background-color: #1f1f1f;">
                                <ul>
                                    <li><a style="color: white; " href="archive.html">项目介绍</a></li>
                                    <li><a style="color: white; " href="archive.html">新闻专栏</a></li>
                                    <li><a style="color: white; " href="archive.html">志愿招募</a></li>
                                    <li><a style="color: white; " href="archive.html">活动地图</a></li>
                                </ul>

                            </div>
                        </div>
                    </li>

                    <li class="dropdown"><a href="#" class="dropdown-toggle"
                                            data-toggle="dropdown">志愿者网</a>
                        <div class="dropdown-menu" style="background-color: #1f1f1f; width: 111px;">
                            <div class="dropdown-inner" style="background-color: #d92a7d;">
                                <ul>
                                    <li><a style="color: white " href="archive.html">项目介绍</a></li>
                                    <li><a style="color: white " href="archive.html">新闻专栏</a></li>
                                    <li><a style="color: white " href="archive.html">宣传视频</a></li>
                                    <li><a style="color: white " href="archive.html">专题活动</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>

                    <li class="dropdown"><a href="#" class="dropdown-toggle"
                                            data-toggle="dropdown">雷锋热线</a>
                        <div class="dropdown-menu" style="background-color: #1f1f1f; width: 111px;">
                            <div class="dropdown-inner" style="background-color: #1f1f1f;">
                                <ul>
                                    <li><a style="color: white " href="archive.html">项目介绍</a></li>
                                    <li><a style="color: white " href="archive.html">新闻专栏</a></li>
                                    <li><a style="color: white " href="archive.html">我要求助</a></li>
                                    <li><a style="color: white " href="archive.html">我要帮扶</a></li>
                                    <li><a style="color: white " href="archive.html">品牌活动</a></li>
                                    <li><a style="color: white " href="archive.html">宣传视频</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>

                    <li class="dropdown"><a href="#" class="dropdown-toggle"
                                            data-toggle="dropdown">公益活动</a>
                        <div class="dropdown-menu" style="background-color: #1f1f1f; width: 125px;">
                            <div class="dropdown-inner" style="background-color: #1f1f1f;">
                                <ul>
                                    <li><a style="color: white " href="archive.html">让轮椅飞</a></li>
                                    <li><a style="color: white " href="archive.html">名师一堂课</a></li>
                                    <li><a style="color: white " href="archive.html">睡前讲故事</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>

                    <li class="dropdown"><a href="#" class="dropdown-toggle"
                                            data-toggle="dropdown">公益广告</a>
                        <div class="dropdown-menu" style="background-color: #1f1f1f; width: 208px;">
                            <div class="dropdown-inner" style="background-color: #1f1f1f;">
                                <ul>
                                    <li><a style="color: white " href="archive.html">图说我们的价值观</a>
                                    </li>
                                    <li><a style="color: white " href="archive.html">“讲文明
                                        树新风”公益广告</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>

                    <li class="dropdown"><a href="http://www.baidu.com"
                                            class="dropdown-toggle current"
                                            data-toggle="dropdown">视频展示</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="header-slide">
        <div id="owl-demo" class="owl-carousel">
        </div>
    </div>
</header>


<div id="page-content" class="index-page">
    <div class="container">
        <div class="row">
            <div class="featured">
                <div class="main-vid">
                    <div class="col-md-6">
                        <div class="zoom-container">
                            <div class="zoom-caption">
                                <a href="<%=commonVideoUrl[0]%>">
                                    <i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
                                </a>
                            </div>
                            <img src="<%=commonVideoImgUrl[0]%>">
                        </div>
                    </div>
                </div>
                <div class="sub-vid">
                    <div class="col-md-3">
                        <div class="zoom-container">
                            <div class="zoom-caption">
                                <a href="<%=commonVideoUrl[1]%>">
                                    <i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
                                </a>
                            </div>
                            <img src="<%=commonVideoImgUrl[1]%>">
                        </div>
                        <div class="zoom-container">
                            <div class="zoom-caption">
                                <a href="<%=commonVideoUrl[2]%>">
                                    <i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
                                </a>
                            </div>
                            <img src="<%=commonVideoImgUrl[2]%>">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="zoom-container">
                            <div class="zoom-caption">
                                <a href="<%=commonVideoUrl[3]%>">
                                    <i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
                                </a>
                            </div>
                            <img src="<%=commonVideoImgUrl[3]%>">
                        </div>
                        <div class="zoom-container">
                            <div class="zoom-caption">
                                <a href="<%=commonVideoUrl[4]%>">
                                    <i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
                                </a>
                            </div>
                            <img src="<%=commonVideoImgUrl[4]%>">
                        </div>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div class="row">
            <div id="main-content">
                <div class="box">
                    <div class="box-header">
                        <h2><i class="fa fa-globe"></i> 特色视频</h2>
                    </div>
                    <div class="box-content">
                        <div class="row">

                            <div class="col-md-6">
                                <div class="wrap-vid">
                                    <div class="zoom-container">
                                        <div class="zoom-caption">
                                            <a href="<%=featureVideoUrl[0]%>">
                                                <i class="fa fa-play-circle-o fa-5x"
                                                   style="color: #fff"></i>
                                            </a>
                                        </div>
                                        <img src="<%=featureVideoImgUrl[0]%>">
                                    </div>

                                </div>
                                <p class="more">.</p>
                                <a href="single.html" class="btn btn-1">更多</a>

                            </div>

                            <div class="col-md-6">
                                <div class="wrap-vid">
                                    <div class="zoom-container">
                                        <div class="zoom-caption">
                                            <a href="<%=featureVideoUrl[1]%>">
                                                <i class="fa fa-play-circle-o fa-5x"
                                                   style="color: #fff"></i>
                                            </a>
                                        </div>
                                        <img src="<%=featureVideoImgUrl[1]%>">
                                    </div>
                                </div>
                                <p class="more">.</p>
                                <a href="single.html" class="btn btn-1">更多</a>
                            </div>
                        </div>
                    </div>
                    <div class="line"></div>
                </div>
            </div>
        </div>
    </div>

</div>


<!-- JS -->
<script src="owl-carousel/owl.carousel.js"></script>
<script>
    $(document).ready(function () {
        $("#owl-demo").owlCarousel({
            autoPlay: 3000,
            items: 5,
            itemsDesktop: [1199, 4],
            itemsDesktopSmall: [979, 4]
        });

    });
</script>


<script type="text/javascript">
    function initSlideVideos() {
        var parent = document.getElementById("owl-demo");
        var one = " <div class=\"item\">\n" +
            "                <div class=\"zoom-container\">\n" +
            "                    <div class=\"zoom-caption\">\n" +
            "                        <a href=\""
        var two = "\">\n" +
            "                            <i class=\"fa fa-play-circle-o fa-5x\" style=\"color: #fff\"></i>\n" +
            "                        </a>\n" +
            "                    </div>\n" +
            "                    <img src=\""
        var three = "\">\n" +
            "                </div>\n" +
            "            </div>"


        <% for(int j=0;j <slideVideoUrl.length;j++){ %>
            var div = document.createElement("div");
            div.setAttribute("class", "item");
            var all = one + "<%=slideVideoUrl[j]%>" +two + "<%=slideVideoImgUrl[j]%>" +three;
            div.innerHTML = all;
            parent.appendChild(div);
            <% System.out.println(j+"aaa"+slideVideoUrl[i]);%>
        <% }%>
    }

    initSlideVideos();
</script>

</body>
</html>
