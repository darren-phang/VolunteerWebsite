<%--
  Created by IntelliJ IDEA.
  User: pangd
  Date: 2018/6/22
  Time: 23:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.*" %>
<html lang="en">
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
    <script type="text/javascript" src="js/html5.js"></script>

    <script language="JavaScript" type="text/javascript">
        var body = new Array();
        var title = new Array();
        var url = new Array();

        <% for(int i=0;i <body.length;i++){ %>

        body[<%=i%>] = " <%=body[i]%> ";
        title[<%=i%>] = " <%=titlemore[i]%> ";
        url[<%=i%>] = " <%=readmore[i]%> ";

        <% } %>


        function changeContent(index) {
            newstitle.innerText = title[index];
            newscontent.innerText = body[index];
            newsurl.href=url[index];
        }
    </script>

</head>

<body>
<%!
    int showindex = 0;
    String[] readmore = new String[9];
    String[] lagetitle = new String[9];
    String[] titlemore = new String[9];
    String[] imageUrl = new String[9];
    String[] body = new String[9];%>
<%
    for (int i = 0; i < 9; i++) {
        readmore[i] = "";
        lagetitle[i] = "";
        titlemore[i] = "";
        imageUrl[i] = "";
        body[i] = "";
    }
%>
<%
    //加载驱动程序
    String driverName = "com.mysql.jdbc.Driver";
//数据库信息
    String userName = "JavaWeb";
//密码
    String userPasswd = "cdut6a502";
//数据库名
    String dbName = "JavaWeb";
//表名
    String tableName = "HomeNews";
//将数据库信息字符串连接成为一个完整的url（也可以直接写成url，分开写是明了可维护性强）
    String url = "jdbc:mysql://39.108.183.209/" + dbName + "?user=" + userName + "&password=" + userPasswd;
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection conn = DriverManager.getConnection(url);
    Statement stmt = conn.createStatement();
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
                <h1><a href="index.html"><strong>志愿者</strong>服务</a></h1>
                <ul>
                    <li><a href="index.html" class="current">文明你我</a></li>
                    <li><a href="index-1.html">志愿者APP</a></li>
                    <li><a href="index-2.html">志愿者网</a></li>
                    <li><a href="index-3.html">雷锋热线</a></li>
                    <li><a href="index-3.html">公益活动</a></li>
                    <li><a href="index-3.html">公益广告</a></li>
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
                        <h2>网站介绍<br/> 网站介绍<span>网站介绍</span></h2>
                        <p>网站介绍<br/> 网站介绍
                            网站介绍 </p>
                        <a href="#" class="extra-button">了解更多</a>
                    </div>
                </section>
            </div>
        </div>
    </div>
    <div class="middle">
        <div class="container">
            <div class="wrapper">
                <div class="grid3 first">
                    <ul class="categories">
                        <li><a href="#" name="one"
                               onclick, onmouseenter="changeContent(0)"><%=lagetitle[0]%>
                        </a></li>
                        <li><a href="#" name="tow"
                               onmouseenter="changeContent(1)"><%=lagetitle[1]%>
                        </a></li>
                        <li><a href="#" name="three"
                               onmouseenter="changeContent(2)"><%=lagetitle[2]%>
                        </a></li>
                        <li><a href="#" name="four"
                               onmouseenter="changeContent(3)"><%=lagetitle[3]%>
                        </a></li>
                        <li><a href="#" name="five"
                               onmouseenter="changeContent(4)"><%=lagetitle[4]%>
                        </a></li>
                        <li><a href="#" name="six"
                               onmouseenter="changeContent(5)"><%=lagetitle[5]%>
                        </a></li>
                        <li><a href="#" name="seven"
                               onmouseenter="changeContent(6)"><%=lagetitle[6]%>
                        </a></li>
                        <li><a href="#" name="eight"
                               onmouseenter="changeContent(7)"><%=lagetitle[7]%>
                        </a></li>
                        <li><a href="#" name="nine"
                               onmouseenter="changeContent(8)"><%=lagetitle[8]%>
                        </a></li>
                    </ul>
                </div>
                <div class="grid9">
                    <h2 id="newstitle"><%=titlemore[showindex]%>
                    </h2>
                    <p id="newscontent"><%=body[showindex]%>
                    </p>
                    <p ><a id="newsurl" href=<%=readmore[showindex]%>>了解更多</a></p>
                    <section class="images">
                        <figure><a href="#"><img src=<%=imageUrl[showindex]%> alt=""></a></figure>
                        <figure><a href="#"><img src="images/1page-img2.jpg" alt=""></a></figure>
                        <figure><a href="#"><img src="images/1page-img3.jpg" alt=""></a></figure>
                    </section>
                </div>
            </div>
        </div>
    </div>
    <div class="bottom">
        <div class="container">
            <div class="wrapper">
                <div class="grid3 first">
                    <h3>相关信息</h3>
                    <ul class="list1">
                        <li><a href="#">Real Application Clusters</a></li>
                        <li><a href="#">Database Security</a></li>
                        <li><a href="#">Secure Enterprise Search</a></li>
                    </ul>
                </div>
                <div class="grid3">
                    <h3>Quick Links</h3>
                    <ul class="list2">
                        <li><a href="#">Certification</a></li>
                        <li><a href="#">Education</a></li>
                        <li><a href="#">Careers</a></li>
                        <li><a href="#">For Midsize Companies</a></li>
                        <li><a href="#">Investors</a></li>
                        <li><a href="#">Technology Network</a></li>
                        <li><a href="#">FAQs</a></li>
                    </ul>
                </div>
                <div class="grid3">
                    <h3>Top Downloads</h3>
                    <ul class="list2">
                        <li><a href="#">Enterprise Architecture</a></li>
                        <li><a href="#">Enterprise 2.0</a></li>
                        <li><a href="#">Grid</a></li>
                        <li><a href="#">Service-Oriented Architecture</a></li>
                        <li><a href="#">Virtualization</a></li>
                        <li><a href="#">Database XE</a></li>
                        <li><a href="#">Enterprise Management</a></li>
                    </ul>
                </div>
                <!--日历-->
                <div class="grid3">
                    <div id="datepicker"></div>
                </div>
            </div>
        </div>
    </div>
</section>
<footer>
    <div class="container">
        <div class="wrapper">
            <div class="copy">Industrial Services (c) 2018 | <a href="index-4.html">Privacy
                policy</a></div>
            <address class="phone">
                如果想要质询更多.请拨打我们的电话 <strong>0-123-456-789</strong>
            </address>
        </div>
    </div>
</footer>
<script type="text/javascript">
    $(document).ready(function () {
        $('.pics').cycle({
            fx: 'toss',
            next: '#next',
            prev: '#prev'
        });
        // Datepicker
        $('#datepicker').datepicker({
            inline: true
        });
    });
</script>
</body>
</html>