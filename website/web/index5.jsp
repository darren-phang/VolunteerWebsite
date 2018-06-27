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

                    <li class="dropdown"><a href="http://www.baidu.com" class="dropdown-toggle current"
                                            data-toggle="dropdown">视频展示</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="header-slide">
        <div id="owl-demo" class="owl-carousel">
            <%-- <div class="item">
                 <div class="zoom-container">
                     <div class="zoom-caption">
                         <a href="single.html">
                             <i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
                         </a>
                     </div>

                     <div style="position:relative; "><br>
                         <video id="video" width="360" height="200">
                             <source src="https://www.strivexj.com/myfiles/video/video2.mp4"
                                     type="video/mp4"/>
                             &lt;%&ndash;<source src="static/video/video3.mp4" type="video/mp4"/>&ndash;%&gt;
                         </video>
                         <br>
                         <div id="output" style="position:absolute;left:0;left:0"><br></div>
                         <br>
                     </div>

                 </div>
             </div>

             <div class="item">
                 <div class="zoom-container">
                     <div class="zoom-caption">
                         <a href="single.html">
                             <i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
                         </a>
                     </div>
                     <img src="videoimages/2.jpg"/>
                 </div>
             </div>


             <div class="item">
                 <div class="zoom-container">
                     <div class="zoom-caption">
                         <a href="single.html">
                             <i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
                         </a>
                     </div>
                     <img src="videoimages/4.jpg"/>
                 </div>
             </div>
             <div class="item">
                 <div class="zoom-container">
                     <div class="zoom-caption">
                         <a href="single.html">
                             <i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
                         </a>
                     </div>
                     <img src="videoimages/5.jpg"/>
                 </div>
             </div>
             <div class="item">
                 <div class="zoom-container">
                     <div class="zoom-caption">
                         <a href="single.html">
                             <i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
                         </a>
                     </div>
                     <img src="videoimages/6.jpg"/>
                 </div>
             </div>
             <div class="item">
                 <div class="zoom-container">
                     <div class="zoom-caption">
                         <a href="single.html">
                             <i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
                         </a>
                     </div>
                     <img src="videoimages/7.jpg"/>
                 </div>
             </div>
             <div class="item">
                 <div class="zoom-container">
                     <div class="zoom-caption">
                         <a href="single.html">
                             <i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
                         </a>
                     </div>
                     <img src="videoimages/8.jpg"/>
                 </div>
             </div>
             <div class="item">
                 <div class="zoom-container">
                     <div class="zoom-caption">
                         <a href="single.html">
                             <i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
                         </a>
                     </div>
                     <img src="videoimages/9.jpg"/>
                 </div>
             </div>--%>
        </div>
    </div>
</header>
<!-- Header -->

<div id="page-content" class="index-page">
    <div class="container">
        <div class="row">
            <div class="featured">
                <div class="main-vid">
                    <div class="col-md-6">
                        <div class="zoom-container">
                            <div class="zoom-caption">
                                <a href="https://www.strivexj.com/myfiles/video/video10.mp4">
                                    <i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
                                </a>
                            </div>
                            <div style="position:relative; "><br>
                                <video class="video" width="450" height="420">
                                    <source src="https://www.strivexj.com/myfiles/video/video10.mp4"
                                            type="video/mp4"/>
                                </video>
                                <br>
                                <div class="output"
                                     style="position:absolute;left:0;left:0"><br></div>
                                <br>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sub-vid">
                    <div class="col-md-3">
                        <div class="zoom-container">
                            <div class="zoom-caption">
                                <a href="https://www.strivexj.com/myfiles/video/video6.mp4">
                                    <i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
                                </a>
                            </div>
                            <div style="position:relative; "><br>
                                <video class="video" width="230" height="150">
                                    <source src="https://www.strivexj.com/myfiles/video/video6.mp4"
                                            type="video/mp4"/>
                                </video>
                                <br>
                                <div class="output"
                                     style="position:absolute;left:0;left:0"><br></div>
                                <br>
                            </div>
                        </div>
                        <div class="zoom-container">
                            <div class="zoom-caption">
                                <a href="https://www.strivexj.com/myfiles/video/video9.mp4">
                                    <i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
                                </a>
                            </div>
                            <div style="position:relative; "><br>
                                <video class="video" width="230" height="150">
                                    <source src="https://www.strivexj.com/myfiles/video/video9.mp4"
                                            type="video/mp4"/>
                                </video>
                                <br>
                                <div class="output"
                                     style="position:absolute;left:0;left:0"><br></div>
                                <br>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="zoom-container">
                            <div class="zoom-caption">
                                <a href="https://www.strivexj.com/myfiles/video/video3.mp4">
                                    <i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
                                </a>
                            </div>
                            <div style="position:relative; "><br>
                                <video class="video" width="230" height="150">
                                    <source src="https://www.strivexj.com/myfiles/video/video3.mp4"
                                            type="video/mp4"/>
                                </video>
                                <br>
                                <div class="output"
                                     style="position:absolute;left:0;left:0"><br></div>
                                <br>
                            </div>
                        </div>
                        <div class="zoom-container">
                            <div class="zoom-caption">
                                <a href="https://www.strivexj.com/myfiles/video/video8.mp4">
                                    <i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
                                </a>
                            </div>
                            <div style="position:relative; "><br>
                                <video class="video" width="230" height="150">
                                    <source src="https://www.strivexj.com/myfiles/video/video8.mp4"
                                            type="video/mp4"/>
                                </video>
                                <br>
                                <div class="output"
                                     style="position:absolute;left:0;left:0"><br></div>
                                <br>
                            </div>
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
                                            <a href="https://www.strivexj.com/myfiles/video/video4.mp4">
                                                <i class="fa fa-play-circle-o fa-5x"
                                                   style="color: #fff"></i>
                                            </a>
                                        </div>
                                        <div style="position:relative; "><br>
                                            <video class="video" width="450" height="260">
                                                <source src="https://www.strivexj.com/myfiles/video/video4.mp4"
                                                        type="video/mp4"/>
                                            </video>
                                            <br>
                                            <div class="output"
                                                 style="position:absolute;left:0;left:0"><br></div>
                                            <br>
                                        </div>
                                    </div>

                                </div>
                                <p class="more">.</p>
                                <a href="single.html" class="btn btn-1">更多</a>

                            </div>
                            <div class="col-md-6">
                                <div class="wrap-vid">
                                    <div class="zoom-container">
                                        <div class="zoom-caption">
                                            <a href="https://www.strivexj.com/myfiles/video/video7.mp4">
                                                <i class="fa fa-play-circle-o fa-5x"
                                                   style="color: #fff"></i>
                                            </a>
                                        </div>
                                        <div style="position:relative; "><br>
                                            <video class="video" width="450" height="260">
                                                <source src="https://www.strivexj.com/myfiles/video/video7.mp4"
                                                        type="video/mp4"/>
                                            </video>
                                            <br>
                                            <div class="output"
                                                 style="position:absolute;left:0;left:0"><br></div>
                                            <br>
                                        </div>
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
        var one = " <div class=\"zoom-container\">\n" +
            "                    <div class=\"zoom-caption\">\n" +
            "                        <a href=\"";
        var two = "\">\n" +
            "                            <i class=\"fa fa-play-circle-o fa-5x\" style=\"color: #fff\"></i>\n" +
            "                        </a>\n" +
            "                    </div>\n" +
            "\n" +
            "                    <div style=\"position:relative; \"><br>\n" +
            "                        <video class=\"video\" width=\"360\" height=\"200\">\n" +
            "                            <source src=\"";
        var three = "\"\n" +
            "                                    type=\"video/mp4\"/>\n" +
            "                            <%--<source src=\"static/video/video3.mp4\" type=\"video/mp4\"/>--%>\n" +
            "                        </video>\n" +
            "                        <br>\n" +
            "                        <div class=\"output\" style=\"position:absolute;left:0;left:0\"><br></div>\n" +
            "                        <br>\n" +
            "                    </div>\n" +
            "\n" +
            "                </div>"


        for (var i = 2; i <= 10; i++) {
            var div = document.createElement("div");
            div.setAttribute("class", "item");
            var videourl = "https://www.strivexj.com/myfiles/video/video" + i + ".mp4";
            var all = one + videourl + two + videourl + three;
            div.innerHTML = all;
            parent.appendChild(div);
            console.log(i + "yes");
        }
    }

    initSlideVideos();
</script>
<script type="text/javascript">
    var video, output;
    var scale = 0.6;
    var initialize = function () {
        output = document.getElementsByClassName("output");
        video = document.getElementsByClassName("video");
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
</body>
</html>
