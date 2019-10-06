<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/10/4
  Time: 20:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.bo.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    User user = (User) session.getAttribute("user");
    pageContext.setAttribute("user",user);
%>
<ul>
    <li>
        <a href="${pageContext.request.contextPath}/index">首页</a>
    </li>

    <li>
        <a href="#">热映影片</a>
    </li>
    <li>
        <a href="#">即将上映</a>
    </li>
    <li>
        <a href="#">经典动画</a>
    </li>
    <li>
        <a href="#">更多</a>
    </li>
</ul>
<ul>
    <%--根据user是否为空，显示不同的内容--%>
    <%
        if (user !=null){
    %>
    <li>
        <a href = "${pageContext.request.contextPath}/user">
            <img src="${pageContext.request.contextPath}/images/${user.avatar}" alt="" class="avatar">
        </a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/logout">退出</a>
    </li>
    <%
    }else{
    %>
    <a href="${pageContext.request.contextPath}/login">去登录</a>
    <%
        }
    %>
</ul>


