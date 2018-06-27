<%--
  Created by IntelliJ IDEA.
  User: pangd
  Date: 2018/6/25
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Title</title>
    <script type="text/javascript" src="js/html5.js"></script>

    <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/grid.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">

</head>
<body>
<%@ include file="logincookie.jsp"%>
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
                    <form method="post" action="" id="textAndImg">
                        <textarea name="title" style="height: 30px; width: 600px; font-size: 21px"
                                  wrap="soft"></textarea>
                        <br><br>
                        <textarea name="article"
                                  style="height: 400px; width: 800px; font-size: 20px;"
                                  wrap="soft"></textarea>

                        <input name="image" id="image" type="text" value="null"
                               style="display: none">
                        <input name="video" id="video" type="text" value="null"
                               style="display: none">
                        <input name="other" id="other" type="text" value="null"
                               style="display: none">
                        <%--<form action="UploadServlet" method="post" enctype="multipart/form-data"--%>
                        <%--style="text-align: center;" id="imgform">--%>
                        <%--</form>--%>
                        <div style="text-align: right">
                            <%--<a href="#" class="alt" onClick="">发表</a>&nbsp;--%>
                            <input type="submit" value="发表" onclick="textSubmit()"/>
                            <input type="reset" value="取消"/>
                        </div>
                    </form>
                    <form method="post" action="" id="ImgAndvedio">
                        <div style="text-align: left">
                            <input type="file" name="uploadfile" id="file"
                                   onchange="fileschoose()"/>
                            <input type="text" name="filename" id="filename" value="null"
                                   style="display: none"/>
                            <button type="submit" id="filecent" onClick="fileSubmit()"
                                    style="display: none"></button>
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
                                <label>姓名:<br/>
                                    <input type="text" value=""/>
                                </label>
                                <label>E-mail:<br/>
                                    <input type="email" value=""/>
                                </label>
                                <label>电话:<br/>
                                    <input type="text" value=""/>
                                </label>
                            </div>
                            <div class="grid3">信息:<br/>
                                <textarea></textarea>
                                <div class="alignright">
                                    <a href="#" class="alt"
                                       onClick="document.getElementById('contacts-form').reset()">清除</a>
                                    &nbsp; &nbsp; &nbsp;<a href="#" class="alt"
                                                           onClick="document.getElementById('contacts-form').submit()">提交</a>
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
<script type="text/javascript">
    function fileschoose() {
        var image = document.getElementById("image");
        var video = document.getElementById("video");
        var other = document.getElementById("other");
        var file = document.getElementById("file");
        var fileName = document.getElementById("filename");

        var date = Date.now();
        if (file.files[0] == undefined) {
            alert('未上传文件！');
        } else {
            //获取上传文件的扩展名
            var filevalue = file.value;
            var index = filevalue.lastIndexOf('.');
            var extenson = filevalue.substring(index);
            if (extenson == ".bmp" || extenson == ".png" || extenson == ".gif" || extenson == ".jpg" || extenson == ".jpeg") {  //根据后缀，判断是否符合图片格式
                // alert("设置前img" + image.value);
                image.value = image.value != "null" ? (image.value + ";" + date + extenson) : (date + extenson);

            } else if (extenson == ".mp4" || extenson == ".rmvb" || extenson == ".avi" || extenson == ".ts") {
                video.value = date + extenson;
            } else {
                other.value = date + extenson;
            }

            fileName.value = date + extenson;
            document.getElementById("filecent").click();
        }
    }

    function fileSubmit() {
        document.getElementById('ImgAndvedio').setAttribute("action", "UploadServlet");
        document.getElementById('ImgAndvedio').setAttribute("enctype", "multipart/form-data");
    }

    function textSubmit() {
        document.getElementById('textAndImg').setAttribute("action", "insertArticle2DB.jsp");
    }
</script>
</body>
</html>
