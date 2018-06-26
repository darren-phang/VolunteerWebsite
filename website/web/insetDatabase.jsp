<%--
  Created by IntelliJ IDEA.
  User: pangd
  Date: 2018/6/26
  Time: 8:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page   pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    response.setContentType("text/html;charset=utf-8");
    request.setCharacterEncoding("utf-8");
%>
<%
    String userName = "JavaWeb";
//密码
    String userPasswd = "cdut6a502";
//数据库名
    String dbName = "JavaWeb";

//将数据库信息字符串连接成为一个完整的url（也可以直接写成url，分开写是明了可维护性强）
//    String url = "jdbc:mysql://108.160.128.18/" + dbName + "?user=" + userName + "&password=" + userPasswd;
    String url = "jdbc:mysql://39.108.183.209/" + dbName + "?user=" + userName + "&password="
            + userPasswd + "&useUnicode=true&characterEncoding=utf-8";

    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection conn = DriverManager.getConnection(url);
%>
<%
    //表名
    String image_url = request.getParameter("image_url");
    String video_url = request.getParameter("video_url");
    String article = request.getParameter("article");
    String title = request.getParameter("title");
    out.print("asd"+image_url+"asd");
//    out.print(image_url);
//    out.print(video_url);
//    out.print(articel);
//    out.print(title);
    String sql = "insert into NEWS values (null, ?, ?, ?, ?);";
    PreparedStatement ps=conn.prepareStatement(sql, 1);

    ps.setString(1, title);
    if (image_url==""){
        ps.setNull(2, Types.NULL);
    }else {
        ps.setString(2, image_url);
    }
    if (image_url==""){
        ps.setNull(3, Types.NULL);
    }else {
        ps.setString(3,video_url);
    }
    ps.setString(4, article);
//    out.println(ps.toString());
    int row=ps.executeUpdate();//执行更新操作，返回所影响的行数
    ResultSet rs = ps.getGeneratedKeys();
    int autoIncKeyFromApi=0;
    if (rs.next()) {
        autoIncKeyFromApi = rs.getInt(1);
    }
    rs.close();
//    if(row>0){
//        out.print("成功添加了 "+row+" 条数据！！！");
//    }

//    ps.close();
//    sql = "SELECT id from NEWS where title=? and image_url=? and video_url=? and articel=?;";
//    ps=conn.prepareStatement(sql);
//    ps.setString(1, title);
//    ps.setString(2, image_url);
//    ps.setString(3, video_url);
//    ps.setString(4, articel);
//    ResultSet rs = ps.executeQuery();
//    int id = 0;
//    while (rs.next()){
//        id = Integer.parseInt(rs.getString(1));
//    }
//    ps.close();
    sql = "insert into Index3news(id,title, id_var) values (null, ?, ?);";
    ps=conn.prepareStatement(sql);
    ps.setString(1, title);
    ps.setInt(2, autoIncKeyFromApi);
    row=ps.executeUpdate();//执行更新操作，返回所影响的行数
//    if(row>0){
//        out.print("成功添加了 "+row+" 条数据！！！");
//    }
    ps.close();
    conn.close();

%>

</body>
</html>
