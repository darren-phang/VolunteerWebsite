<%--
  Created by IntelliJ IDEA.
  User: pangd
  Date: 2018/6/26
  Time: 8:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="utf-8" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Types" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="db.jsp"%>
<%
    response.setContentType("text/html;charset=utf-8");
    request.setCharacterEncoding("utf-8");
%>
<%
    //表名
    String image_url = request.getParameter("image");
    String video_url = request.getParameter("video");
    String article = request.getParameter("article");
    String title = request.getParameter("title");

    String sql = "insert into NEWS values (null, ?, ?, ?, ?);";
    PreparedStatement ps = conn.prepareStatement(sql, 1);

    ps.setString(1, title);
    if (image_url == "") {
        ps.setNull(2, Types.NULL);
    } else {
        ps.setString(2, image_url);
    }
    if (image_url == "") {
        ps.setNull(3, Types.NULL);
    } else {
        ps.setString(3, video_url);
    }
    ps.setString(4, article);
//    out.println(ps.toString());
    int row = ps.executeUpdate();//执行更新操作，返回所影响的行数
    ResultSet rs = ps.getGeneratedKeys();
    int autoIncKeyFromApi = 0;
    if (rs.next()) {
        autoIncKeyFromApi = rs.getInt(1);
    }
    rs.close();

    sql = "insert into Index3news(id,title, id_var) values (null, ?, ?);";
    ps = conn.prepareStatement(sql);
    ps.setString(1, title);
    ps.setInt(2, autoIncKeyFromApi);
    row = ps.executeUpdate();//执行更新操作，返回所影响的行数

    ps.close();
    conn.close();

%>


</body>
<script type="text/javascript" language="JavaScript">
    var redirectUrl = "news.jsp?id=" + <%=autoIncKeyFromApi%>;
    window.location.href=redirectUrl;
</script>
</html>