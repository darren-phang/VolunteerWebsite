import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/check")
public class check extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        String username = request.getParameter("name");
        String action = request.getParameter("action");
        String userName = "JavaWeb";
        String userPasswd = "cdut6a502";
        String dbName = "JavaWeb";
        String url = "jdbc:mysql://39.108.183.209/" + dbName + "?user=" + userName + "&password=" + userPasswd + "&useUnicode=true&characterEncoding=utf-8";
        System.out.println(username);
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection conn = null;
            conn = DriverManager.getConnection(url);
            int isvolunteer;
            if (action.equals("accept")){
                isvolunteer = 2;
            }
            else {
                isvolunteer = 0;
            }
            System.out.println(isvolunteer);
            String sql = "UPDATE TheUser set isvolunteer=? where username=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, isvolunteer);
            ps.setString(2, username);
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
        response.sendRedirect("check.jsp");
    }
}
