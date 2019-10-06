package com.bo.servlet;/*@ClassName IndexServlet
 *@Description:todo
 *@author yc_shang
 *@Date2019/10/4
 *@Version 1.0
 **/

import com.bo.entity.Film;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/index")
public class IndexServlet  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获得各个servlet的共享对象
        ServletContext sc = this.getServletContext();
        //获得全局应用对象中的变量
        List<Film> filmList = (List<Film>) sc.getAttribute("filmList");
        //存入request
        req.setAttribute("filmList",filmList);
        //通过服务器端转发，将数据带过去，并保持地址栏不变
        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }
}
