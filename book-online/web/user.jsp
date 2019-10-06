<%@ page import="com.bo.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/10/3
  Time: 23:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>
    <link rel = " stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <style type="text/css">
       .explore{
           display: flex;
           align-items: center;
           justify-content: space-between;
           background-color: rgb(237,244,237);
           height: 80px;
         padding-left:10px;
       }
        .nav{
            display: flex;
            align-items: center;
            list-style: none;
        }
        .item{
            height:80px;
            margin-top: 10px;
            margin-bottom: 10px;
            padding-top: 10px;
            padding-bottom: 10px;
        }
        .read{
            border-bottom: 1px solid #eee;
        }
        .read a{
            color: rgb(51,119,170);
            text-decoration: none;
        }
        .container{
            width: 85%;
            margin: 0 auto;
            display: flex;
            flex-direction: column;
        }
    </style>
</head>
<body>
<%
User user =(User) session.getAttribute("user");
pageContext.setAttribute("user",user);
%>
<%--顶部区域，引入共用的top.jsp页面--%>
<div id="top">
    <jsp:include page="top.jsp"/>
</div>
<%--浏览区域--%>
<div class="explore">
    <ul class="nav">
        <li>首页</li>
        <li>浏览发现</li>
        <li>话题广场</li>
        <li>我的豆瓣</li>
    </ul>
    <label>
        <input type="text" placeholder="搜素你感兴趣的内容和人" class="search-input">
    </label>
</div>
<div class ="container">
    <div class="row">
        <%--左侧区域--%>
        <div class="col-8">
            <div class="info">
                <img src="images/${user.avatar}" alt="" class="profile">
            </div>
            <br>
            <div class="item">
                <ul class="nav">
                    <li>我的日记</li>
                </ul>
                <p>在豆瓣上写日记，记录自己的生活、想法</p>
            </div>
            <div class="item">
                <ul class="nav">
                    <li>我的相册</li>
                </ul>
                <p>可以有我自己的相册来存放照片了。</p>
            </div>
            <div class="item">
                <ul class="nav">
                    <li>我读</li>
                </ul>
                <p>5本我想读</p>
            </div>
            <div class="item">
                <ul class="nav">
                    <li>留言板</li>
                </ul>
                <label>
                    <textarea cols="80" rows="5"></textarea>
                </label>
                <div>
                    <input type="button" value="留言">
                </div>
            </div>
    </div>
        <div class="col-4">
            <div class="top">
                <img src="images/${user.avatar}" alt="">
                <div>
                    <p>常居：${user.address}</p>
                    <p>账号：${user.account}</p>
                    <p>${user.joinDate}加入</p>
                </div>
            </div>
            <p>${user.nickname}</p>
        </div>
        <br>
        <div class="item">
            <ul class="nav">
                <li>我的广播......(全部)</li>
            </ul>
            <br>
            <div class="read">
                <p><a href="">${user.nickname}</a>想读
                <a href="">写给大忙人的JAVA SE 8</a>
                </p>
                <P style="">2018年1月2日</P>
            </div>
            <div class="read">
                <p><a href="">${user.nickname}</a>想读
                    <a href="">写给大忙人的JAVA SE 8</a>
                </p>
                <P style="">2018年1月2日</P>
            </div>
            <div class="read">
                <p><a href="">${user.nickname}</a>想读
                    <a href="">写给大忙人的JAVA SE 8</a>
                </p>
                <P style="">2018年1月2日</P>
            </div>
            <div class="read">
                <p><a href="">${user.nickname}</a>想读
                    <a href="">写给大忙人的JAVA SE 8</a>
                </p>
                <P style="">2018年1月2日</P>
            </div>
        </div>
    </div>
</div>
</body>
</html>
