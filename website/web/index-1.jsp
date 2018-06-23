<%--
  Created by IntelliJ IDEA.
  User: pangd
  Date: 2018/6/23
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.*" %>
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
    <script type="text/javascript" src="js/html5.js"></script>


</head>

<body>
<%
    String readmore = "";
    String imageUrl1 = "";
    String imageUrl2 = "";
    String body1 = "";
    String body2 = "";
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
    String tableName = "Index1New";
//将数据库信息字符串连接成为一个完整的url（也可以直接写成url，分开写是明了可维护性强）

    String url = "jdbc:mysql://39.108.183.209/" + dbName + "?user=" + userName + "&password=" + userPasswd;
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection conn = DriverManager.getConnection(url);
    Statement stmt = conn.createStatement();
    String sql = "SELECT * FROM " + tableName;
    ResultSet rs = stmt.executeQuery(sql);
    int i = 0;
    while (rs.next()) {
        if (i > 0)
            break;
        readmore = rs.getString(2);
        imageUrl1 = rs.getString(3);
        imageUrl2 = rs.getString(4);
        body1 = rs.getString(5);
        body2 = rs.getString(6);
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
                    <li><a href="index.html">文明你我</a></li>
                    <li><a href="index-1.html">志愿者APP</a></li>
                    <li><a href="index-2.html" class="current">志愿者网</a></li>
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
                <div class="grid9">
                    <h2>项目介绍</h2>
                    <div class="img-box">
                        <figure><img src="<%=imageUrl1%>" alt=""></figure>
                        <p style="word-wrap: break-word"><%=body1%></p>
                    </div>
                    <div class="img-box">
                        <figure><img src="<%=imageUrl2%>" alt=""></figure>
                        <p style="word-wrap: break-word"><%=body2%></p>
                    </div>
                    <a href="<%=readmore%>" class="more">了解更多</a>
                </div>
            </div>
        </div>
    </div>
    <div class="middle">
        <div class="container">
            <div class="clearfix">
                <div class="grid3 first">
                    <h2>New service</h2>
                    <div class="img-wrap">
                        <figure><img src="images/2page-img3.jpg" alt=""></figure>
                    </div>
                    <p>Fuscem euismod consequat ante lorem ipsum dolor sitamet consectetuer adipiscing elit pellentesque
                        sed.</p>
                    <p><a href="#">Aliquam congue fermentum nisl. Mauris accumsan nulla vel diam sed in lacus ut enim
                        adipiscing aliquet nulla</a></p>
                    <a href="#" class="more">Read More</a>
                </div>
                <div class="grid9">
                    <h2>Services overview</h2>
                    <p><a href="#"><strong>Fusce euismod consequat ante lorem</strong></a> ipsum dolor sit amet
                        consectetuer adipiscing elit pellentes dolor aliquam conguet fermentum nisl. Mauris accumsan
                        nulla vel diam. Sed in lacus ut enim adipiscing aliquet. Nulla venenatis. In pede maliquet sit
                        amet, euismod in, auctor ut, ligula. Aliquam dapibus tincidunt metus. Praesent justo dolor,
                        lobortis quis, lobortisissim pulvinar ac, lorem. Vestibulum sed ante. Donec sagittis euismod
                        purus.Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p>
                    <p>Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris phasellus porta fusce
                        suscipit varius micum sociis natoque penatibus et magnis dis parturient nascetur ridiculus
                        musnulla dui fusce feugiat malesuada odio. Morbi nunc odio, gravida at, cursus nec, luctus a,
                        lorem. Maecenas tristique orci ac sem. Duis ultricies pharetra magna.</p>
                    <div class="clearfix">
                        <div class="grid3 first">
                            <ul class="list3">
                                <li><a href="#">Fusce euismod consequat ante</a></li>
                                <li><a href="#">Lorem ipsum dolor amconsectetuer</a></li>
                                <li><a href="#">Adipiscing elit pellentesq sed dolor</a></li>
                                <li><a href="#">Aliquam congue fermentum nislum</a></li>
                                <li><a href="#">Mauris accumsan nulla vel diam</a></li>
                            </ul>
                        </div>
                        <div class="grid3">
                            <ul class="list3">
                                <li><a href="#">Mauris accumsan nulla vel diam</a></li>
                                <li><a href="#">Sed in lacus utem enim adipiscing</a></li>
                                <li><a href="#">Aliquet nulla venenatis in pedem</a></li>
                                <li><a href="#">Aliquet sit amet euismod in auctor</a></li>
                                <li><a href="#">Ligulam aliquam dapibus tincidunt</a></li>
                            </ul>
                        </div>
                        <div class="grid3">
                            <ul class="list3">
                                <li><a href="#">Fusce euismod consequat antem</a></li>
                                <li><a href="#">Lorem ipsum dolor amconsectetuer</a></li>
                                <li><a href="#">Adipiscing elit pellentesq sed dolor</a></li>
                                <li><a href="#">Aliquam congue fermentum nislum</a></li>
                                <li><a href="#">Mauris accumsan nulla vel diam</a></li>
                            </ul>
                        </div>
                    </div>
                    <a href="#" class="more">Read More</a>
                </div>
            </div>
        </div>
    </div>
    <div class="bottom">
        <div class="container">
            <div class="clearfix">
                <div class="grid6 first">
                    <h3>Services List</h3>
                    <div class="wrapper">
                        <div class="grid3 first">
                            <ul class="list2">
                                <li><a href="#">Sed ut perspiciatis unde omnis iste</a></li>
                                <li><a href="#">Natus ervoluptatem accusantium</a></li>
                                <li><a href="#">Doloremque laudantium totam rem</a></li>
                                <li><a href="#">Aperiam, eaque ipsa quae ab illo</a></li>
                                <li><a href="#">Inventore veritatis et quasi architecto</a></li>
                                <li><a href="#">Beatae vitae dicta sunt explicabo</a></li>
                                <li><a href="#">Nemo enim ipsam voluptatem quia </a></li>
                            </ul>
                        </div>
                        <div class="grid3">
                            <ul class="list2">
                                <li><a href="#">Vestibulum iaculis lacinia est proin</a></li>
                                <li><a href="#">Dictum elementum velit fusce</a></li>
                                <li><a href="#">Euismod consequat ante lorem</a></li>
                                <li><a href="#">Ipsum dolor sit amet, consectetuer</a></li>
                                <li><a href="#">Adipiscing elit pellentesque sedolor</a></li>
                                <li><a href="#">Aliquam congue fermentum nisl</a></li>
                                <li><a href="#">Mauris accumsan nulla vel diam</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="grid3">
                    <h3>Unique Services</h3>
                    <p>Praesent vestibulum mol lacus aenean nonummy hendrerit maurisen phasellus porta fusce suscipit
                        varius micum sociis natoque penatibus et magnis.</p>
                    Diparturient nascetur ridiculus musnulla dui fusce feugiat malesuada odio. Morbi nunc odio, gravida
                    at, cursus.
                </div>
                <div class="grid3">
                    <h3>Risk Management</h3>
                    <p>Praesent vestibulum mol lacus aenean nonummy hendrerit maurisen phasellus porta fusce suscipit
                        variusem.</p>
                    <ul class="list1">
                        <li><a href="#">Lorem ipsum dolor sitemet amet</a></li>
                        <li><a href="#">Consectetuer adipiscing elitum</a></li>
                        <li><a href="#">Praesent vestibulum molestie lacus</a></li>
                    </ul>
                </div>
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
            <div class="copy">Industrial Services (c) 2010 | <a href="index-4.html">Privacy policy</a></div>
            <address class="phone">
                We're glad to help you. Please email or call us. <strong>1-123-456-7890</strong>
            </address>
        </div>
    </div>
</footer>
</body>

</html>
