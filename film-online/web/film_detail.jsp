<%@ page import="java.util.List" %>
<%@ page import="com.bo.entity.Film" %>
<%@ page import="com.bo.entity.User" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/10/5
  Time: 20:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>影片详解</title>
    <link rel = " stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <style type="text/css">

        h3 {
            color: rgb(73, 73, 73);
            margin-left: 10px;
            margin-top: 10px;
            font-size: 30px;
            font-family:华文楷体, serif;
        }
        p{
            font-size: 20px;
            color: #616161;
            padding-top: 10px;
        }
        .item {
            height: 80px;
            margin-top: 10px;
            margin-bottom: 10px;
            padding-top: 10px;
            padding-bottom: 10px;
        }
        .nav {
            display: flex;
            align-items: center;
            list-style: none;
            padding-left: 10px;
        }
        .nav li {
            text-decoration: none;
            color: rgb(61, 133, 73);
            font-size: 18px;
        }

    </style>
</head>
<body>
<%
    Film film = (Film) request.getAttribute("film");
    pageContext.setAttribute("film",film);
    User user =(User) session.getAttribute("user");
    pageContext.setAttribute("user",user);
%>
<%--顶部区域，引入共用的top.jsp页面--%>
<div id="top">
    <jsp:include page="top.jsp"/>
</div>
<%--浏览区域--%>
<div class="container" style="background-color: #d5d5d5">
    <div class="col-8">
        <h3>${film.film_name}</h3>
        <hr>
        <div class="row">
                <img src="/images/${film.avatar}" alt="">
            <div class="col-8"style="margin-left: 20px">
                <p>导演：<span>${film.director}</span></p>
                <p>评分：<span>${film.score}</span></p>
                <p>主演：<span>${film.actor}</span></p>
                <p>时长：<span>${film.time}</span></p>
                <p>剧情：<span>${film.type}</span></p>
                <p>语种：<span>${film.language}</span></p>
                <p>剧情简介：<span>${film.brief}</span></p>
            </div>
        </div>
    </div>
    <div class="col-4">
        <h3>网友热评</h3>
        <hr>
        <div class="item">
            <ul class="nav">
                <li>t****6</li>
            </ul>
            <p style="padding-left: 15px">决定二刷，从来没有电影让我有这种冲动和想法！看得我热泪盈眶，热血沸腾，我爱我的祖国！我和我的祖国，一刻也不能分割。</p>
        </div>
        <div class="item">
            <ul class="nav">
                <li>q****7</li>
            </ul>
            <p style="padding-left: 15px">此情此景，此时此刻：震撼，感动，泪目，自豪！！！！！！此生无悔入华夏，来世还为中国人！</p>
        </div>
        <div class="item">
            <ul class="nav">
                <li>不****蔗</li>
            </ul>
            <p style="padding-left: 15px">我们都是攀登者。一旦上路绝不退缩。是男儿把泪水哽咽在喉咙，绝不让他溜出眼眶</p>
        </div>
    </div>

    </div>
</div>
<div id="footer">
    <jsp:include page="footer.jsp"/>
</div>
</body>
</html>