import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by cwj on 6/27/18 18:46
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String uid = request.getParameter("uid");
        String pwd = request.getParameter("pwd");
        String email = request.getParameter("uid");
        System.out.println("注册"+uid+" "+pwd+" "+email);
        //数据库信息
        String userName = "JavaWeb";
//密码
        String userPasswd = "cdut6a502";
//数据库名
        String dbName = "JavaWeb";
//将数据库信息字符串连接成为一个完整的url（也可以直接写成url，分开写是明了可维护性强）
//    String url = "jdbc:mysql://108.160.128.18/" + dbName + "?user=" + userName + "&password=" + userPasswd;
        String url = "jdbc:mysql://39.108.183.209/" + dbName + "?user=" + userName + "&password=" + userPasswd + "&useUnicode=true&characterEncoding=utf-8";

        boolean flag = true;
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection conn = null;
            conn = DriverManager.getConnection(url);
            Statement stmt = conn.createStatement();

            String sql = "insert into user (username, password, email) values (?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, uid);
            ps.setString(2, pwd);
            ps.setString(3, email);
            ps.execute();
            ps.close();
            conn.close();

        } catch (Exception e) {
            flag = false;
        }

        if (flag) {
            response.sendRedirect("LoginAndRegister.jsp?action=success");
        } else {
            response.sendRedirect("LoginAndRegister.jsp?action=error");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
