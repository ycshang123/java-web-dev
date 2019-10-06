package com.bo.servlet;/*@ClassName IndexServlet
 *@Description:todo
 *@author yc_shang
 *@Date2019/10/3
 *@Version 1.0
 **/

import com.bo.entity.Book;
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
        //获得各个servlet共享对象
        ServletContext sc = this.getServletContext();
        //取得全局应用对象的变量
        List<Book> bookList = (List<Book>) sc.getAttribute("bookList");
        //存入request
        req.setAttribute("bookList",bookList);
        resp.setContentType("text/plain;charset=utf-8");
        resp.getWriter().print(bookList.toString());
        //通过服务器端转发，将数据带过去，并保持地址栏不变
        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }
}
