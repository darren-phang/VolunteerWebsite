<%--
  Created by IntelliJ IDEA.
  User: pangd
  Date: 2018/6/27
  Time: 16:37
  To change this template use File | Settings | File Templates.
--%>
<%!
    String uesrname = "unknown";
%>
<%
    Cookie[] cc = request.getCookies();
    boolean has_login = false;
    for(Cookie c:cc){
        if(c.getName().equals("user")){
            has_login =true;
        }
    }
    if (has_login){
        for(Cookie c:cc){
            if(c.getName().equals("user")){
                uesrname = c.getValue();
            }
        }
    }
%>