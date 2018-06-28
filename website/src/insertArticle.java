import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet("/insertArticle")
public class insertArticle extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        System.out.println("开始插入");
        String organizer = request.getParameter("organizer");
        String image_url = request.getParameter("image");
        String video_url = request.getParameter("video");
        String article = request.getParameter("article");
        String title = request.getParameter("title");
        System.out.println(organizer+image_url+video_url+article+title);
        String userName = "JavaWeb";
//密码
        String userPasswd = "cdut6a502";
//数据库名
        String dbName = "JavaWeb";
//将数据库信息字符串连接成为一个完整的url（也可以直接写成url，分开写是明了可维护性强）
//    String url = "jdbc:mysql://108.160.128.18/" + dbName + "?user=" + userName + "&password=" + userPasswd;
        String url = "jdbc:mysql://39.108.183.209/" + dbName + "?user=" + userName + "&password=" + userPasswd + "&useUnicode=true&characterEncoding=utf-8";
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conn = null;
            conn = DriverManager.getConnection(url);
            String sql = "insert into NEWS values (null, ?, ?, ?, ?, ?);";
            PreparedStatement ps = conn.prepareStatement(sql, 1);
            ps.setString(1, organizer);

            ps.setString(2, article);
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

            sql = "insert into Index3news(id,title, id_var) values (null, ?, ?);";
            ps = conn.prepareStatement(sql);
            ps.setString(1, title);
            ps.setInt(2, autoIncKeyFromApi);
            row = ps.executeUpdate();//执行更新操作，返回所影响的行数
            ps.close();
            conn.close();
            response.sendRedirect("newsAndActivity.jsp?id=" + autoIncKeyFromApi+"&action=news");
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
