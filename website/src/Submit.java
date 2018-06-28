import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Submit")
public class Submit extends HttpServlet {
    private static final String DRIVER_NAME = "com.mysql.cj.jdbc.Driver";
    String userName = "JavaWeb";
    //密码
    String userPasswd = "cdut6a502";
    //数据库名
    String dbName = "JavaWeb";
    String url = "jdbc:mysql://39.108.183.209/" + dbName + "?user=" + userName + "&password=" + userPasswd + "&useUnicode=true&characterEncoding=utf-8";


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
        boolean flag = true;
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        String username = request.getParameter("username");

        String gender = request.getParameter("gender");
        String realname = request.getParameter("realname");
        String category = request.getParameter("category");
        String identitycard = request.getParameter("identitycard");
        String serverType = request.getParameter("serverType");
        String nation = request.getParameter("nation");
        String serverArea = request.getParameter("serverArea");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");

        System.out.println(username+gender+realname+category+identitycard+serverArea+nation+phone+email);
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection conn = null;
            conn = DriverManager.getConnection(url);
            String sql = "UPDATE TheUser set isvolunteer=1, realname=?,category=?,gender=?,identitycard=?,nation=?,serverArea=?,phone=?,email=? where username=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, realname);
            ps.setString(2, category);
            ps.setString(3, gender);
            ps.setString(4, identitycard);
            ps.setString(5, nation);
            ps.setString(6, serverArea);
            ps.setString(7, phone);
            ps.setString(8, email);
            ps.setString(9, username);
            ps.execute();
            ps.close();
            conn.close();
        } catch (java.lang.Exception exception) {
            exception.printStackTrace();
        }
        request.setAttribute("message", "申请成功！");
        getServletContext().getRequestDispatcher("/message.jsp").forward(request, response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
