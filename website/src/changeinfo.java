import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet("/changeinfo")
public class changeinfo extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        String username = request.getParameter("username");
        String gender = request.getParameter("gender");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String age = request.getParameter("age");
        System.out.println(username+gender+phone+email+age);
        String userName = "JavaWeb";
        String userPasswd = "cdut6a502";
        String dbName = "JavaWeb";
        String url = "jdbc:mysql://39.108.183.209/" + dbName + "?user=" + userName + "&password=" + userPasswd + "&useUnicode=true&characterEncoding=utf-8";
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection conn = null;
            conn = DriverManager.getConnection(url);
            String sql = "UPDATE TheUser set gender=?,phone=?,email=?,age=? where username=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, gender);
            ps.setString(2, phone);
            ps.setString(3, email);
            ps.setString(4, age);
            ps.setString(5, username);
            ps.execute();
            ps.close();
            conn.close();
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        response.sendRedirect("index7.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
