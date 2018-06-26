<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: cwj
  Date: 6/23/18
  Time: 4:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

//数据库信息
    String userName = "JavaWeb";
//密码
    String userPasswd = "cdut6a502";
//数据库名
    String dbName = "JavaWeb";

//将数据库信息字符串连接成为一个完整的url（也可以直接写成url，分开写是明了可维护性强）
//    String url = "jdbc:mysql://108.160.128.18/" + dbName + "?user=" + userName + "&password=" + userPasswd;
    String url = "jdbc:mysql://39.108.183.209/" + dbName + "?user=" + userName + "&password=" + userPasswd+ "&useUnicode=true&characterEncoding=utf-8";
/*//数据库信息
    String userName = "cwj";
//密码
    String userPasswd = "strive123";
//数据库名
    String dbName = "javaweb";

//将数据库信息字符串连接成为一个完整的url（也可以直接写成url，分开写是明了可维护性强）
    String url = "jdbc:mysql://localhost/" + dbName + "?user=" + userName + "&password=" + userPass*/

    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection conn = null;
    conn = DriverManager.getConnection(url);
    Statement stmt = conn.createStatement();
%>