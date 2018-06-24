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


    <%--<script type="text/javascript" src="js/html5.js"></script>--%>
    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="js/jquery.cycle.all.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.8.5.custom.min.js"></script>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/style2.css">

    <!-- Owl Carousel Assets -->
    <link href="owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="owl-carousel/owl.theme.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link rel="stylesheet" href="font-awesome-4.4.0/css/font-awesome.min.css" type="text/css">

    <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/grid.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/jquery-ui-1.8.5.custom.css" type="text/css" media="all">


    <!-- jQuery -->
    <script src="js/jquery-2.1.1.js"></script>

    <!-- Core JavaScript Files -->
    <script src="js/bootstrap.min.js"></script>

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
<header style="position:relative;z-index:1">
    <nav>
        <div class="container">
            <div class="wrapper">
                <h1><a href="index.jsp"><strong>志愿者</strong>服务</a></h1>
                <ul>
                    <li><a href="index.jsp">文明你我</a></li>
                    <li><a href="index-1.jsp">志愿者APP</a></li>
                    <li><a href="index-2.jsp" class="current">志愿者网</a></li>
                    <li><a href="index-3.jsp">雷锋热线</a></li>
                    <li><a href="index-3.jsp">公益活动</a></li>
                    <li><a href="index-3.jsp">公益广告</a></li>
                </ul>
            </div>
        </div>
    </nav>


    <!--Navigation-->
    <%--<nav id="menu" class="navbar" style="position: relative;z-index: 19999">
        <div class="container">
            <div class="collapse navbar-collapse ">
                <ul class="nav navbar-nav">

                    <li class="dropdown"><a href="#" class="dropdown-toggle"
                                            data-toggle="dropdown"></i>文明你我</a>
                        <div class="dropdown-menu" style="background-color: black">
                            <div class="dropdown-inner" style="background-color: black;">
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
                                            data-toggle="dropdown"></i>志愿者APP</a>
                        <div class="dropdown-menu" style="background-color: black">
                            <div class="dropdown-inner" style="background-color: black;">
                                <ul>
                                    <li><a style="color: white " href="archive.html">项目介绍</a></li>
                                    <li><a style="color: white " href="archive.html">新闻专栏</a></li>
                                    <li><a style="color: white " href="archive.html">志愿招募</a></li>
                                    <li><a style="color: white " href="archive.html">活动地图</a></li>
                                </ul>

                            </div>
                        </div>
                    </li>

                    <li class="dropdown"><a href="#" class="dropdown-toggle"
                                            data-toggle="dropdown"></i>志愿者网</a>
                        <div class="dropdown-menu" style="background-color: black">
                            <div class="dropdown-inner" style="background-color: black;">
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
                                            data-toggle="dropdown"></i>雷锋热线</a>
                        <div class="dropdown-menu" style="background-color: black">
                            <div class="dropdown-inner" style="background-color: black;">
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
                                            data-toggle="dropdown"></i>公益活动</a>
                        <div class="dropdown-menu" style="background-color: black">
                            <div class="dropdown-inner" style="background-color: black;">
                                <ul>
                                    <li><a style="color: white " href="archive.html">让轮椅飞</a></li>
                                    <li><a style="color: white " href="archive.html">名师一堂课</a></li>
                                    <li><a style="color: white " href="archive.html">睡前讲故事</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>

                    <li class="dropdown"><a href="#" class="dropdown-toggle"
                                            data-toggle="dropdown"></i>公益广告</a>
                        <div class="dropdown-menu" style="background-color: black">
                            <div class="dropdown-inner" style="background-color: black;">
                                <ul>
                                    <li><a style="color: white " href="archive.html">图说我们的价值观</a></li>
                                    <li><a style="color: white " href="archive.html">“讲文明 树新风”公益广告</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>--%>


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

<section id="content" style="position:relative; z-index:0;">
    <div class="top">
        <div class="container">
            <div class="clearfix">
                <div class="grid9">
                    <h2>项目介绍</h2>
                    <div class="img-box">

                    </div>
                    <div class="img-box">

                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="middle">
        <div class="container">
            <div class="clearfix">


            </div>
        </div>
    </div>
    <div class="top">
        <div class="container">
            <div class="clearfix">


            </div>
        </div>
    </div>
    <div class="middle">
        <div class="container">
            <div class="clearfix">
                <div class="grid9">

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
