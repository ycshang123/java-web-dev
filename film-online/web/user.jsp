<%@ page import="com.bo.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/10/5
  Time: 20:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>
    <link rel = " stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <style type="text/css">
        .info{
           display: flex;
        }
        .profile {
            width: 80px;
            height: 80px;
            border-radius: 5px;
            margin-top: 10px;
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
        }
        .nav li {
            text-decoration: none;
            color: rgb(61, 133, 73);
            font-size: 18px;
            margin-right: 20px;
        }
        .text{
            display: flex;
            justify-content: left;
            flex-direction: column;
            border: 1px solid #aaaaaa;
            width: 70%;
            margin: 50px;
        }
        .a{
            width:85%;
            overflow:hidden;
            margin: 0 auto;
            background-color: #e0f7fa;
        }
        .left
        {
            width:49%;
            display:inline-block;
            float: left;
            padding-left: 40px;
        }
        .right{
            padding-left: 20px;
            width:50%;
            display:inline-block;
            float: right;
            margin-top: -510px;
        }
        h2 {
            color: rgb(73, 73, 73);
            margin-left: 50px;
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
    <div class="a">
        <div class="left">
                <div class="info">
                    <div class="left">
                        <img src="images/${user.avatar}" alt="" class="profile">
                    </div>
                    <div style="margin-left: -180px;margin-top: 10px">
                        <p>昵称：${user.nickname}</p>
                        <p>邮箱：${user.account}</p>
                        <p>加入日期：${user.joinDate}</p>
                        <p>居住地：${user.address}</p>
                    </div>
                </div>
                <div class="item">
                    <ul class="nav">
                        <li>我的留言</li>
                    </ul>
                    <p>希望每天都有人来踩踩我的主页</p>
                </div>
                <div class="item">
                    <ul class="nav">
                        <li>我的相册</li>
                    </ul>
                    <p>终于可以存放我心爱的观影照片啦</p>
                </div>
                <div class="item">
                    <ul class="nav">
                        <li>我的愿望</li>
                    </ul>
                    <p>希望观看一场惊悚片啦啦啦~~~~</p>
                </div>
                <div class="item">
                    <ul class="nav">
                        <li>留言板</li>
                    </ul>
                    <label>
                        <textarea cols="60" rows="4"></textarea>
                    </label>
                </div>
            </div>
        </div>
        <div class="right">
                <h2>电影观后感</h2>
                <div class="text">
                    <p>${user.nickname}&nbsp&nbsp&nbsp&nbsp<span>2018-12-12</span></p>
                    <p>${user.talk}</p>
                </div>
                <div class="text">
                    <p>${user.nickname}&nbsp&nbsp&nbsp&nbsp<span>2018-12-12</span></p>
                    <p>${user.talk}</p>
                </div>
                <div class="text">
                    <p>${user.nickname}&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <span>2018-12-12</span></p>
                    <p>${user.talk}</p>
                </div>
           </div>
</div>
<div id="footer">
    <jsp:include page="footer.jsp"/>
</div>
</body>
</html>