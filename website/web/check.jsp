<%@ page import="java.sql.PreparedStatement" %><%--
  Created by IntelliJ IDEA.
  User: cwj
  Date: 6/29/18
  Time: 7:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-2.1.1.js"></script>
</head>
<body>
<%@ include file="logincookie.jsp" %>
<%@ include file="db.jsp" %>
<%
    String[] isvolunteer = new String[10];
    String[] name = new String[10];
    String[] age = new String[10];
    String[] gender = new String[10];
    String[] realname = new String[10];
    String[] phone = new String[10];
    String[] category = new String[10];
    String[] identitycard = new String[10];
    String[] nation = new String[10];
    String[] email = new String[10];
%>
<%
    //表名5
    String tableName = "TheUser";
    String sql = "SELECT * FROM " + tableName + " where isvolunteer=1";
    PreparedStatement ps = conn.prepareStatement(sql);
    ResultSet rs = ps.executeQuery();
    int i = 0;
    while (rs.next()) {
        /*if (i > 0)
            break;*/
        isvolunteer[i] = rs.getString(3);
        name[i] = rs.getString(1);
        age[i] = rs.getString(4);
        gender[i] = rs.getString(5);
        realname[i] = rs.getString(6);
        phone[i] = rs.getString(7);
        category[i] = rs.getString(8);
        identitycard[i] = rs.getString(9);
        nation[i] = rs.getString(10);
        email[i] = rs.getString(11);
        i += 1;
    }
    rs.close();
    stmt.close();
    conn.close();
%>

<div class="panel panel-default" style=" width: 900px;margin:0px auto;margin-top: 100px">
    <div class="panel-heading">
        <h3 class="panel-title">
            申请志愿者列表
        </h3>
    </div>
    <div class="panel-body" id="content">

    </div>
</div>
</body>
<script>
    var admin = "<%=uesrname%>";
    if(admin!="admin"){
        alert("你无权访问");
        window.location.href = "index.jsp";
    }
    function accept(name) {
        console.log(name);
        var url = "check?name=" + name + "&action=accept";
        window.location.href = url;
    }

    function refuse(name) {
        console.log(name);
        var url = "check?name=" + name + "&action=refuse";
        window.location.href = url;
    }
</script>
<script type="text/javascript">
    var parent = document.getElementById("content");
    <% for(int j=0;j <realname.length;j++){ %>
    <% if(realname[j]==null) continue;%>
    var one ="<div>\n" +
        "            <label class=\"control-label\">用户名:<%=name[j]%>\n" +
        "            </label>&nbsp;&nbsp;\n" +
        "            <label class=\"control-label\">姓名:<%=realname[j]%>\n" +
        "            </label>&nbsp;&nbsp;\n" +
        "            <label class=\"control-label\">年龄:<%=age[j]%>\n" +
        "            </label>&nbsp;&nbsp;\n" +
        "            <label class=\"control-label\">电话:<%=phone[j]%>\n" +
        "            </label>&nbsp;&nbsp;\n" +
        "            <label class=\"control-label\">身份证:<%=identitycard[j]%>\n" +
        "            </label>&nbsp;&nbsp;\n" +
        "            <button class=\"btn btn-default\" onclick='accept(\"<%=name[j]%>\")'>同意</button>\n" +
        "            <button class=\"btn btn-default\" onclick='refuse(\"<%=name[j]%>\")'>拒绝</button>\n" +
        "        </div>";

    var div = document.createElement("div");
    div.innerHTML = one;
    parent.appendChild(div);
    document.getElementById("");
    <% }%>
</script>
</html>
