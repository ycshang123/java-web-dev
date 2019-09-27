package com;/*@ClassName LoginServlet
 *@Description:todo
 *@author yc_shang
 *@Date2019/9/27
 *@Version 1.0
 **/
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
//注解 urlPatterns：地址映射  当地址栏出现login.do的时候会自动跳转到服务器
@WebServlet(urlPatterns = "/login.do" )

public class LoginServlet  extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //解决请求乱码
        req.setCharacterEncoding("UTF-8");
        //通过requset请求对象取出前台提交的用户名和密码参数
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        //将用户名存入request对象
        req.setAttribute("username",username);
        //服务器端跳转URI地址不变    index要跳转的界面
        req.getRequestDispatcher("index.jsp").forward(req,resp);
        //获取session对象
        HttpSession session = req.getSession();
        //将用户名存入session
        session.setAttribute("username",username);
        resp.sendRedirect("index.jsp");
        System.out.println(username+password);
    }
}

