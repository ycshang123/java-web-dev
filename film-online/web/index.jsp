<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/10/4
  Time: 15:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="com.bo.entity.Film" %>
<%@ page import="com.bo.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>首页</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"type = "text/css">
  <style type="text/css">
    h2,h3{
      color: rgb(73,73,73);
    }
    @font-face {
        font-family: 'iconfont';  /* project id 1434145 */
        src: url('//at.alicdn.com/t/font_1434145_nisvn13pk1r.eot');
        src: url('//at.alicdn.com/t/font_1434145_nisvn13pk1r.eot?#iefix') format('embedded-opentype'),
        url('//at.alicdn.com/t/font_1434145_nisvn13pk1r.woff2') format('woff2'),
        url('//at.alicdn.com/t/font_1434145_nisvn13pk1r.woff') format('woff'),
        url('//at.alicdn.com/t/font_1434145_nisvn13pk1r.ttf') format('truetype'),
        url('//at.alicdn.com/t/font_1434145_nisvn13pk1r.svg#iconfont') format('svg');
    }
    .iconfont {
        font-family: "iconfont" !important;
        font-size: 28px;
        font-style: normal;
        -webkit-font-smoothing: antialiased;
        -webkit-text-stroke-width: 0.2px;
        -moz-osx-font-smoothing: grayscale;
    }
    .btn{
        width: 120px;
        height: 45px;
        border:none;
        outline:none;
        border-radius: 20px;
    }
    .btn-text{
        font-size:18px;
        position: relative;
        top: -3px;
    }
    .red-theme{
        background-color:#e53935;
        color:#fff;
    }
    .header img{
        margin-top: 10px;
          height: 100%;
          width: 100%;
      }
    .card {
        height: 180px;
        margin: 20px 5px 20px 5px;
        display: flex;
        flex-direction: column;
        align-items: center;
        padding-bottom: 40px;

    }
    .card img {
        width:100%;
        height: 100%;
    }
    .card p {
        font-size: 13px;
        color: #9b9b9b;
    }


  </style>
</head>
<body>

<%--使用jsp的include动作，将top.jsp页面包含进来，这个顶部导航可以给各个页面共享--%>
<div id="top">
  <jsp:include page="top.jsp"/>
</div>

<div class="container">
    <div class="header">
        <div class="col-12">
           <a href="${pageContext.request.contextPath}/detail/1">
               <img src="images/h1.jpg">
           </a>
        </div>
    </div>
<div class="row">
        <%
            List<Film> filmList = (List<Film>) request.getAttribute("filmList");
            User user = (User) session.getAttribute("user");
            pageContext.setAttribute("user",user);
            for(Film film : filmList){
                pageContext.setAttribute("film",film);
        %>
        <div class="col-3 card">
            <a href="${pageContext.request.contextPath}/detail/${film.id}">
                <img src="images/${film.avatar}" alt="">
            </a>
            <p>${film.film_name}&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp${film.score}</p>
            <p>${film.director}</p>
            <button type="button" class="btn red-theme">
                <i class="iconfont">&#xe6ad;</i>
               <%
                   if(user!=null){
               %>
                <a href="${pageContext.request.contextPath}/detail/${film.id}">
                    <span class="btn-text">去购票</span>
                </a>
                <%
                    }else{
                %>
                <a href="${pageContext.request.contextPath}/login.html">
                    <span class="btn-text">去购票</span>
                </a>
               <!-- out.print("<script>alert('先登录才可以购票哦');location.href='/login';</script>");-->
                <%
                    }
                %>
            </button>
        </div>
        <%
            }
        %>
    </div>
</div>
<div id="footer">
    <jsp:include page="footer.jsp"/>
</div>
 </body>
</html>
