<%--
  Created by IntelliJ IDEA.
  User: pangd
  Date: 2018/6/20
  Time: 18:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.*" %>

<html>
    <head>
        <title>$Title$</title>
    </head>
    <body>
    <%
        //加载驱动程序
        String driverName="com.mysql.jdbc.Driver";
//数据库信息
        String userName="root";
//密码
        String userPasswd="cdut6a502";
//数据库名
        String dbName="JavaWeb";
//表名
        String tableName="test";
//将数据库信息字符串连接成为一个完整的url（也可以直接写成url，分开写是明了可维护性强）

        String url="jdbc:mysql://39.108.183.209/"+dbName+"?user="+userName+"&password="+userPasswd;
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection conn=DriverManager.getConnection(url);
        Statement stmt = conn.createStatement();
        String sql="SELECT * FROM "+tableName;
        ResultSet rs = stmt.executeQuery(sql);

        while(rs.next()) {
            out.print(rs.getString(1)+" ");
            out.print("|");
            out.print(rs.getString(2)+" ");
            out.print("|");
        }
        out.print("<br>");
        out.print("ok， Database Query Successd！");
        rs.close();
        stmt.close();
        conn.close();
    %>
    </body>

</html>
