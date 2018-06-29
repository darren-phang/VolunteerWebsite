<%--
  Created by IntelliJ IDEA.
  User: pangd
  Date: 2018/6/22
  Time: 23:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>志愿者服务中心</title>
    <meta charset="utf-8">
    <link rel="icon" href="images/logo.png" type="image/x-icon">
    <link rel="shortcut icon" href="images/logo.png" type="image/x-icon">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/grid.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/jquery-ui-1.8.5.custom.css" type="text/css" media="all">
</head>

<body>
<%!
    int showindex = 0;
    String[] readmore = new String[9];
    String[] lagetitle = new String[9];
    String[] titlemore = new String[9];
    String[] imageUrl = new String[9];
    String[] body = new String[9];

%>
<%@ include file="logincookie.jsp"%>
<%@ include file="db.jsp" %>
<%
    //表名5
    String tableName = "HomeNews";
    String sql = "SELECT * FROM " + tableName;
    ResultSet rs = stmt.executeQuery(sql);
    int i = 0;
    while (rs.next()) {
        if (i > 8)
            break;
        readmore[i] = rs.getString(2);
        lagetitle[i] = rs.getString(3);
        titlemore[i] = rs.getString(4);
        imageUrl[i] = rs.getString(5);

        body[i] = rs.getString(6);
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
                    <li><a href="index.jsp" class="current">文明你我</a></li>
                    <li><a href="index1.jsp">志愿者APP</a></li>
                    <li><a href="index2.jsp">志愿者网</a></li>
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
                <!--图片显示区-->
                <section id="gallery">
                    <div class="pics">
                        <img src="images/poster1.png" alt="" width="495" height="329">
                        <img src="images/poster2.png" alt="" width="495" height="329">
                        <img src="images/poster3.png" alt="" width="495" height="329">
                    </div>
                    <a href="#" id="prev"></a>
                    <a href="#" id="next"></a>
                </section>
                <!--图片右边那一块-->
                <section id="intro">
                    <div class="inner">
                        <h2>志愿者活动中心</h2>
                        <p style="font-size: 18px">
                            志愿者（Volunteer）联合国定义为“自愿进行社会公共利益服务而不获取任何利益、金钱、名利的活动者”，具体指在不为任何物质报酬的情况下，能够主动承担社会责任而不获取报酬，奉献个人时间和行动的人。
                            根据中国的具体情况来说，志愿者是这样定义的：“在自身条件许可的情况下，参加相关团体，在不谋求任何物质、金钱及相关利益回报的前提下，在非本职职责范围内，合理运用社会现有的资源，服务于社会公益事业，为帮助有一定需要的人士，开展力所能及的、切合实际的，具一定专业性、技能性、长期性服务活动的人。"
                            自愿参与社会公益活动的人。享受乘坐公交车，地铁免费，免费进公园及旅游景点。
                            志愿者也叫义工、义务工作者或志工。他们致力于免费、无偿地为社会进步贡献自己的力量。
                            志愿工作是指一种具有组织性的助人及基于社会公益责任的参与行为，其发展可追溯至第二次世界大战后，福利主义抬头导致各国政府支出崩塌，发展义务工作以解决社会上不胜负荷的需求。</p>
                        <a href="http://www.zgzyz.org.cn/" target="_blank" class="extra-button">更多</a>
                    </div>
                </section>
            </div>
        </div>
    </div>
    <div class="middle" style="height: 500px;">
        <div class="container">
            <div class="wrapper">
                <div class="grid3 first">
                    <ul class="categories">
                        <li><a href="#" onmouseenter="changeContent(0)"><%=lagetitle[0]%>
                        </a></li>
                        <li><a href="#" onmouseenter="changeContent(1)"><%=lagetitle[1]%>
                        </a></li>
                        <li><a href="#" onmouseenter="changeContent(2)"><%=lagetitle[2]%>
                        </a></li>
                        <li><a href="#" onmouseenter="changeContent(3)"><%=lagetitle[3]%>
                        </a></li>
                        <li><a href="#" onmouseenter="changeContent(4)"><%=lagetitle[4]%>
                        </a></li>
                        <li><a href="#" onmouseenter="changeContent(5)"><%=lagetitle[5]%>
                        </a></li>
                        <li><a href="#" onmouseenter="changeContent(6)"><%=lagetitle[6]%>
                        </a></li>
                        <li><a href="#" onmouseenter="changeContent(7)"><%=lagetitle[7]%>
                        </a></li>
                        <li><a href="#" onmouseenter="changeContent(8)"><%=lagetitle[8]%>
                        </a></li>
                    </ul>
                </div>
                <div class="grid9">
                    <h2 id="newstitle"
                        style="padding-top: 10px;line-height: 40px"><%=titlemore[showindex]%>
                    </h2>
                    <p id="newscontent"><%=body[showindex]%>
                    </p>
                    <p><a id="newsurl" target="_blank" href=<%=readmore[showindex]%> >了解更多</a></p>

                    <section class="images">
                        <figure id="figure1" style="height: 200px; width: 200px  ;"><a><img
                                class="center-cropped" id="img1" alt=""></a></figure>
                        <figure id="figure2" style="height: 200px; width: 200px  ;"><a><img
                                class="center-cropped" id="img2" alt=""></a></figure>
                        <figure id="figure3" style="height: 200px; width: 200px  ;"><a><img
                                class="center-cropped" id="img3" alt=""></a></figure>
                    </section>
                </div>
            </div>
        </div>
    </div>

</section>

<%--<script type="text/javascript" src="js/html5.js"></script>--%>

<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.cycle.all.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.5.custom.min.js"></script>
<script type="text/javascript">
    var body = new Array();
    var title = new Array();
    var url = new Array();
    var imgurl = new Array();
    <% for(int j=0;j <body.length;j++){ %>
    body[<%=j%>] = " <%=body[j]%> ";
    title[<%=j%>] = " <%=titlemore[j]%> ";
    url[<%=j%>] = " <%=readmore[j]%> ";
    imgurl[<%=j%>] = " <%=imageUrl[j]%> ";
    <% } %>

    function addImg(index) {
        var imgurls = new Array();
        imgurls[0] = imgurl[index].split(";")[0];
        imgurls[1] = imgurl[index].split(";")[1];
        imgurls[2] = imgurl[index].split(";")[2];
        var i = 0;
        for (; i < 3; ++i) {
            var str = "img" + (i + 1);
            var figure = "figure" + (i + 1);
            document.getElementById(figure).style.display = "none";
            if (imgurls[i] != " null " && imgurls[i] != undefined) {
                document.getElementById(figure).style.display = "";
                document.getElementById(str).src = imgurls[i].trim();
            }
        }
    }

    function changeContent(index) {
        newstitle.innerText = title[index];
        newscontent.innerText = body[index];
        newsurl.href = url[index];
        addImg(index);
    }


    /**
     * 动态更新图片
     * @param index
     */
    function updateImg(index) {
        var imgurls = imgurl[index].split(";");
        var parent = document.getElementById("images");
        $("#images").empty();
        for (var i = 0; i < imgurls.length; i++) {
            if (imgurls[i] == " null " || imgurls[i].charAt(imgurls[i].length - 1) == '.') continue;
            var figure = document.createElement("figure");
            figure.setAttribute("style", "height: 100px; width: 100px;display:inline;padding: 5px");
            var img = document.createElement("img");
            img.setAttribute("class", "center-cropped");
            img.src = imgurls[i];
            figure.appendChild(img);
            parent.appendChild(figure);
        }
    }
    changeContent(0);
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

<%@ include file="footer.jsp" %>

</body>
</html>