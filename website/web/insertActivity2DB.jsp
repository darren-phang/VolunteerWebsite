<%--
  Created by IntelliJ IDEA.
  User: pangd
  Date: 2018/6/27
  Time: 16:57
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
    String organizer = request.getParameter("organizer");
    String introduction = request.getParameter("article");
    String title = request.getParameter("title");
    String image_url = request.getParameter("image");
    String video_url = request.getParameter("video");
    String sql = "insert into Activities values (null, ?, ?, ?, ?, ?);";
    PreparedStatement ps = conn.prepareStatement(sql, 1);
    ps.setString(1, organizer);
    ps.setString(2, introduction);
    ps.setString(3, title);
    if (image_url == "") {
        ps.setNull(4, Types.NULL);
    } else {
        ps.setString(4, image_url);
    }
    if (video_url == "") {
        ps.setNull(5, Types.NULL);
    } else {
        ps.setString(5, video_url);
    }
//    out.println(ps.toString());

    int row = ps.executeUpdate();//执行更新操作，返回所影响的行数
    ResultSet rs = ps.getGeneratedKeys();
    int autoIncKeyFromApi = 0;
    if (rs.next()) {
        autoIncKeyFromApi = rs.getInt(1);
    }
    rs.close();

    ps.close();
    conn.close();
%>


</body>
<script type="text/javascript" language="JavaScript">
    var redirectUrl = "newsAndActivity.jsp?id=" + <%=autoIncKeyFromApi%>+"&action=activity";
    window.location.href=redirectUrl;
</script>
</html>
