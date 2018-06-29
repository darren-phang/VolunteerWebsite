<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2018/6/27
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>志愿者申请</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/grid.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/jquery-ui-1.8.5.custom.css" type="text/css" media="all">
    <style type="text/css">
        .divstyle {
            width: 700px;
            height: 800px;
            position: absolute;
            top: 10%;
            left: 30%;
        }
    </style>
</head>
<body>

<%@ include file="logincookie.jsp"%>
<header>
    <nav>
        <div class="container">
            <div class="wrapper">
                <h1><a href="index.jsp"><strong>志愿者</strong>服务</a></h1>
                <ul>
                    <li><a href="index.jsp" >文明你我</a></li>
                    <li><a href="index1.jsp">志愿者APP</a></li>
                    <li><a href="index2.jsp">志愿者网</a></li>
                    <li><a href="index3.jsp">雷锋热线</a></li>
                    <li><a href="index4.jsp">公益活动</a></li>
                    <li><a href="index5.jsp">公益广告</a></li>
                    <li><a href="video.jsp">视频展示</a></li>
                    <li><a href="publish.jsp">发布文章</a></li>
                </ul>
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
    <div class="middle">
        <div class="container">
            <div class="clearfix">
                <div style="position:relative"><br>
                    <h1 style="font-size: 30px" align="center">注册个人基本信息</h1><br><br>
                    <form id="centRequ" action="" method="post">
                        <input name="username" style="display: none;" value="<%=uesrname%>">
                        <tr>
                            <td>真实姓名：</td>
                            <td><input name="realname" id="realname"></td>
                        </tr>
                        <br><br>
                        <tr>
                            <td>政治面貌：</td>
                            <td><select name="category" id="category">
                                <option value="共青团员">共青团员</option>
                                <option value="中共党员">中共党员</option>
                                <option value="群众">群众</option>
                            </select></td>
                        </tr>
                        <br><br>
                        <tr>
                            <td>身份证号码：</td>
                            <td><input name="identitycard" id="identitycard"></td>
                        </tr>
                        <br><br>
                        <tr>
                            <td>民族：</td>
                            <td><input name="nation" id="nation"></td>
                        </tr>
                        <br><br>
                        <tr>
                            <td>性别：</td>
                            <td>&nbsp;&nbsp;
                                <input type="radio" name="gender" checked="checked" value="男">&nbsp;男&nbsp;&nbsp;
                                <input type="radio" name="gender" value="女">&nbsp;女
                            </td>
                        </tr>
                        <br><br>
                        <tr>
                            <td>手机：</td>
                            <td><input name="phone" id="phone"></td>
                        </tr>
                        <br><br>
                        <tr>
                            <td>邮箱：</td>
                            <td><input name="email" id="email"></td>
                        </tr>
                        <br><br>
                        <tr>
                            <td align="right" valign="top">服务类别：</td>
                            <br>
                            <td>
                                <input type="radio" checked="checked" name="serverArea" value="赛会服务">&nbsp;赛会服务&nbsp;&nbsp;
                                <input type="radio" name="serverArea" value="应急救援">&nbsp;应急救援&nbsp;&nbsp;
                                <input type="radio" name="serverArea" value="城市运行">&nbsp;城市运行&nbsp;&nbsp;
                                <input type="radio" name="serverArea" value="文化教育">&nbsp;文化教育&nbsp;&nbsp;
                                <input type="radio" name="serverArea" value="关爱服务">&nbsp;关爱服务&nbsp;&nbsp;
                                <input type="radio" name="serverArea" value="社区服务">&nbsp;社区服务&nbsp;&nbsp;
                                <input type="radio" name="serverArea" value="绿色环保">&nbsp;绿色环保&nbsp;&nbsp;
                                <input type="radio" name="serverArea" value="医疗卫生">&nbsp;医疗卫生&nbsp;&nbsp;
                                <input type="radio" name="serverArea" value="其他">&nbsp;其他&nbsp;&nbsp;
                            </td>
                        </tr>
                        <br><br>
                        <button type="submit" onclick="registerVolun()" style="text-align: center">提交申请</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<script type="text/javascript">
    var login = <%=has_login%>;
    if (login){
        document.getElementById('login1').style.display = "none";
        document.getElementById('login2').style.display = "";
    }
    else {
        window.location.href = "index.jsp";
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
    function registerVolun() {
        var temp = document.getElementsByName("gender");
        document.getElementById("centRequ").setAttribute("action", "Submit");
        for(var i=0;i<temp.length;i++)
        {
            if(temp[i].checked)
                var gender = temp[i].value;
        }
        var temp1 = document.getElementsByName("serverArea");
        for(var i1=0;i<temp.length;i++)
        {
            if(temp[i].checked)
                var serverArea = temp[i].value;
        }
        var realname = document.getElementById("realname").value;
        var identitycard = document.getElementById("identitycard").value;
        var nation = document.getElementById("nation").value;
        // var gender = document.getElementsByName("gender").value;
        var phone = document.getElementById("phone").value;
        var email = document.getElementById("email").value;
        // var serverArea = document.getElementById("serverArea").value;
        console.log(realname+gender);
        var succeed = true;
        if (realname==""||identitycard==""||nation==""||phone==""||email==""){
            alert("请完善信息后提交");
            succeed = false;
        }else if(identitycard.length!=18){
            alert("请输入正确的身份证号码");
            succeed = false;
        }
        if (!succeed){
            console.log("succeed");
            document.getElementById("centRequ").removeAttribute("action");
            return false;
        }
    }
</script>
</body>
</html>
