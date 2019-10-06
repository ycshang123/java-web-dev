package com.bo.servlet;/*@ClassName FilmDetailServlet
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
import java.awt.print.Book;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/detail/*")
public class FilmDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取请求的URI，并去除空格
        String requestPath = req.getRequestURI().trim();
        //获取最后一个"/"的位置
        int position = requestPath.lastIndexOf("/");
        //从该位置到最后取子串，也就是“/detail/3”的3，有了这个id，就可以取集合中找到匹配的电影对象
        String id = requestPath.substring(position+1);
        //从全局变量中取出电影列表
        ServletContext sc = this.getServletContext();
        List<Film> filmList = (List<Film>) sc.getAttribute("filmList");
        //遍历查找指定id的电影

        for(Film film :filmList){
            if(Integer.parseInt(id) == film.getId()){
                //找到匹配的id，存入request，页面转发到图书详情页，地址栏不变
                req.setAttribute("film",film);
                req.getRequestDispatcher("/film_detail.jsp").forward(req,resp);
            }
        }
    }
}
