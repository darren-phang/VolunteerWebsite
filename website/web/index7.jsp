<%--
  Created by IntelliJ IDEA.
  User: pangd
  Date: 2018/6/28
  Time: 15:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.PreparedStatement" %>
<html>
<head>

    <title>志愿者服务中心</title>
    <meta charset="utf-8">
    <link rel="icon"href="images/logo.png"type="image/x-icon">
    <link rel="shortcut icon"href="images/logo.png"type="image/x-icon">
    <link rel="icon"href="images/logo.png"type="image/x-icon">
    <link rel="shortcut icon"href="images/logo.png"type="image/x-icon">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/grid.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/jquery-ui-1.8.5.custom.css" type="text/css" media="all">
    <!--[if lt IE 9]>
    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="js/jquery.cycle.all.js"></script>
    <script type="text/javascript" src="js/html5.js"></script>
    <![endif]-->
</head>
<body>
<%@ include file="logincookie.jsp"%>
<%@ include file="db.jsp" %>
<%!
    String isvolunteer;
    String age;
    String gender;
    String realname;
    String phone;
    String category;
    String identitycard;
    String nation;
    String email;
    String year="";
    String mouth="";
    String day="";
%>
<%
    //表名5
    String tableName = "TheUser";
    String sql = "SELECT * FROM " + tableName + " where username=?";
    PreparedStatement ps = conn.prepareStatement(sql, 1);
    ps.setString(1, uesrname);
    ResultSet rs = ps.executeQuery();
    int i = 0;
    while (rs.next()) {
        if (i > 0)
            break;
        isvolunteer = rs.getString(3);
        age = rs.getString(4);
        gender = rs.getString(5);
        realname = rs.getString(6);
        phone = rs.getString(7);
        category = rs.getString(8);
        identitycard = rs.getString(9);
        nation = rs.getString(10);
        email = rs.getString(11);
        i += 1;
    }
    if (isvolunteer.equals( "0"))
    {
        isvolunteer = "未注册";
    }else if(isvolunteer.equals( "1")){
        isvolunteer = "待审核";
    }else {
        isvolunteer = "已注册";
    }
    if(identitycard!=null){
        year = identitycard.substring(6,10);
        mouth = identitycard.substring(10,12);
        day = identitycard.substring(12,14);
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
</header>
<section id="content">
    <div class="top">
        <div class="container">
            <div class="clearfix" style="font-size: large;color:red;">
                <p><strong>个人信息显示页面</strong></p>
            </div>
            <div id="zc_logo_xx">
                    <table border="0" cellspacing="0" cellpadding="0">
                        <tr>

                            <td width="60">&nbsp;</td>
                            <td>
                                <span style="font-size:large;color: black;">
                                    用户名：
                                </span>
                            </td>
                            <td>
                                <span style="font-size:large;color: black;"><%=uesrname%></span>
                            </td>
                            <td width="40">&nbsp;</td>
                            <td>
                                <a id="checkRe" href="application.jsp" class="dropdown-toggle" data-close-others="true"
                                   style="text-decoration:none;">
                                    <i class="fa fa-sign-out"></i>
                                    <div id="11">
                                        <span style="font-size: large">
                                       申请成为志愿者
                                        </span>
                                    </div>
                                    <div id="12" style="display: none">
                                        <span style="font-size: large">
                                       志愿者审核
                                        </span>
                                    </div>
                                </a>
                            </td>
                            <td width="40">&nbsp;</td>
                            <td>
                                <a href="javascript:void(0);" onclick="change()" class="dropdown-toggle" data-close-others="true"
                                   style="text-decoration:none;">
                                    <i class="fa fa-sign-out"></i>
                                    <span style="font-size: large">
                                        修改个人信息
                                    </span>

                                </a>
                            </td>
                            <td width="40">&nbsp;</td>
                            <td>
                                <a href="javascript:void(0);" onclick="logout()" class="dropdown-toggle" data-close-others="true"
                                   style="text-decoration:none;">
                                    <i class="fa fa-sign-out"></i>
                                    <span style="font-size: large">
                                        退出
                                    </span>

                                </a>
                            </td>
                            <td width="10">&nbsp;</td>
                        </tr>
                    </table>
                </div>
            <br>
            <div class="middle" style="font-size: large;color:black;">
                <div class="container">
                    <div class="clearfix">
                        <div class="grid10">
                            <form action="changeinfo" method="post">
                                <table class="ufo_table_02" width="100%" border="0" cellspacing="0" cellpadding="0"
                                       style="margin:22px;margin-top:99px;">
                                    <tr>
                                        <div class="zc_a_box_title" style="font-size: larger;color: green;">基本信息</div>
                                        <td width="230" height="100">
                                            <img src="images/bg.jpg">
                                        </td>
                                        <td>
                                            <table cellpadding="0" cellspacing="0" border="0">
                                                <tr style="height: 45px;">
                                                    <td class="lz_td1" align="right"><span>用户名：</span></td>
                                                    <td class="lz_td2">
                                                        <input name="username" id="1" style="border: 0px;outline:none;cursor: pointer;"
                                                               readonly="readonly" type="text" value="<%=uesrname%>">
                                                    </td>
                                                </tr>
                                                <tr style="height: 45px;">
                                                    <td class="lz_td1" align="right"><span>性别：</span></td>
                                                    <td class="lz_td2">
                                                        <input name="gender" id="2"  style="border: 0px;outline:none;cursor: pointer;"
                                                               readonly="readonly" type="text" value="<%=gender%>">
                                                    </td>
                                                </tr>
                                                <tr style="height: 45px;">
                                                    <td class="lz_td1" align="right"><span>电话：</span></td>
                                                    <td class="lz_td2">
                                                        <input name="phone" id="3" style="border: 0px;outline:none;cursor: pointer;"
                                                               readonly="readonly" type="text" value="<%=phone%>">
                                                    </td>
                                                </tr>
                                                <tr style="height:45px;">
                                                    <td class="lz_td1" align="right"><span>邮箱：</span></td>
                                                    <td class="lz_td2">
                                                        <input  name="email" id="4" style="border: 0px;outline:none;cursor: pointer;"
                                                               readonly="readonly" type="text" value="<%=email%>">
                                                    </td>
                                                </tr>
                                                <tr style="height:45px;">
                                                    <td class="lz_td1" align="right"><span>年龄：</span></td>
                                                    <td class="lz_td2">
                                                        <input name="age" id="5" style="border: 0px;outline:none;cursor: pointer;"
                                                               readonly="readonly" type="text" value="<%=age%>">
                                                    </td>
                                                </tr>
                                                <tr style="height:45px;">
                                                    <td class="lz_td1" align="right"><span>是否为注册志愿者：</span></td>
                                                    <td class="lz_td2">
                                                        <span><%=isvolunteer%></span>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                                <div style="text-align: right">
                                    <input id="6" type="submit" value="确定" style="display: none" onclick="reload()">
                                    <input id="7" type="reset" value="取消" style="display: none" onclick="reload()">
                                </div>
                            </form>
                            <div id="informationOfRegister">
                                <div class="zc_a_box_title" style="font-size: larger;color: green; " id="">志愿者报名个人信息</div>
                                <div class="row">
                                    <div class="col-md-12" align="center">
                                        <table class="table table-bordered table-hover table-striped table-condensed"
                                               style="line-height:50px;">
                                            <tr>
                                                <td colspan="4">&nbsp;</td>
                                            </tr>

                                            <tr>
                                                <td class="lz_td1">真实姓名：</td>
                                                <td class="lz_td2"><%=realname%></td>

                                                <td class="lz_td1">性别：</td>
                                                <td class="lz_td2"><%=gender%></td>
                                            </tr>
                                            <tr>
                                                <td class="lz_td1">出生日期：</td>
                                                <td class="lz_td2"><%=year%>年<%=mouth%>月<%=day%>日</td>

                                            </tr>
                                            <tr>
                                                <td class="lz_td1">证件类型：</td>
                                                <td class="lz_td2">中华人民共和国居民身份证</td>
                                                <td colspan="2">&nbsp;</td>
                                                <td class="lz_td1">证件号码：</td>
                                                <td class="lz_td2"><%=identitycard%></td>
                                            </tr>

                                            <tr>
                                                <td class="lz_td1">服务类别：</td>
                                                <td class="lz_td2">医疗卫生</td>
                                                <td class="lz_td1">服务领域或行业：</td>
                                                <td class="lz_td2">医疗志愿者</td>
                                            </tr>

                                            <tr>
                                                <td class="lz_td1">政治面貌：</td>
                                                <td class="lz_td2"><%=category%></td>
                                                <td class="lz_td1"> 民 族：</td>
                                                <td class="lz_td2"><%=nation%></td>
                                            </tr>

                                        </table>
                                    </div>
                            </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<footer>
    <div class="bottom">
        <div class="container">
            <div class="wrapper">
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

                <!--日历-->
                <div class="grid3">
                    <div id="datepicker"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="wrapper">
            <div class="copy">&copyCDUT实训 2018</div>
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
<script type="text/javascript">
    if("<%=uesrname%>"=="admin")
    {
        document.getElementById("12").style.display="";
        document.getElementById("11").style.display="none";
        document.getElementById("checkRe").setAttribute("href","check.jsp");
    }
    var is_register = "<%=isvolunteer%>";
    console.log(is_register);
    if(is_register!="已注册"){
        document.getElementById("informationOfRegister").style.display = "none";
    }
</script>
<script type="text/javascript">
    function change() {
        document.getElementById("2").removeAttribute("readonly");
        document.getElementById("3").removeAttribute("readonly");
        document.getElementById("4").removeAttribute("readonly");
        document.getElementById("5").removeAttribute("readonly");
        document.getElementById("6").style.display = "";
        document.getElementById("7").style.display = "";

    }
    function logout() {
        window.location.href = "index.jsp";
        var myDate = new Date();
        myDate.setTime(-1000);//设置时间
        var data = document.cookie;
        var dataArray = data.split("; ");
        for (var i = 0; i < dataArray.length; i++) {
            var varName = dataArray[i].split("=");
            document.cookie = varName[0] + "=''; expires=" + myDate.toGMTString();
        }
    }
    function reload() {
        location.reload();
    }
</script>
</body>
</html>
