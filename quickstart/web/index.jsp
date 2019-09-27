<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/9/27
  Time: 20:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>首页</title>
  </head>
  <body>
quickstart
<h2>首页</h2>
<!--尖括号内部可以写Java代码-->
<%--<h2>欢迎你：<%=request.getAttribute("username")%></h2>--%>
<!--客户端-->
<h2>欢迎你：<%=session.getAttribute("username")%></h2>
<a href = "person.jsp">个人中心</a>
<%=session.getAttribute("username")%>
  </body>
</html>
