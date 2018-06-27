import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Login")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uid = request.getParameter("uid");
        String pwd = request.getParameter("pwd");

        //数据库信息
        String userName = "JavaWeb";
//密码
        String userPasswd = "cdut6a502";
//数据库名
        String dbName = "JavaWeb";
//将数据库信息字符串连接成为一个完整的url（也可以直接写成url，分开写是明了可维护性强）
//    String url = "jdbc:mysql://108.160.128.18/" + dbName + "?user=" + userName + "&password=" + userPasswd;
        String url = "jdbc:mysql://39.108.183.209/" + dbName + "?user=" + userName + "&password=" + userPasswd + "&useUnicode=true&characterEncoding=utf-8";

        boolean flag = false;
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection conn = null;
            conn = DriverManager.getConnection(url);
            Statement stmt = conn.createStatement();

            String tableName = "user";
            String sql = "SELECT * FROM " + tableName + " where username=\"" + uid + "\"and password=\"" + pwd + "\";";
            ResultSet rs = stmt.executeQuery(sql);
            rs.last();
            int length = rs.getRow();
            if (length != 0) {
                flag = true;
            }
        } catch (Exception e) {
        }

        if (flag) {
            Cookie c = new Cookie("user", uid);
            response.addCookie(c);
            response.sendRedirect("index.jsp");
        } else {
            response.sendRedirect("LoginAndRegister.jsp?action=error");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
// TODO Auto-generated method stub
        doGet(request, response);
    }
}
