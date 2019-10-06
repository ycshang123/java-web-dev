package com.bo.servlet;/*@ClassName UserPageServlet
 *@Description:todo
 *@author yc_shang
 *@Date2019/10/3
 *@Version 1.0
 **/

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/user")
public class UserPageServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/user.jsp").forward(req,resp);
    }
}
