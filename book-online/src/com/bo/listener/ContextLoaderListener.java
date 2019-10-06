package com.bo.listener;/*@ClassName ContextLoaderListener
 *@Description:todo
 *@author yc_shang
 *@Date2019/10/3
 *@Version 1.0
 **/

import com.bo.entity.Book;
import com.bo.entity.User;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebServlet;
import javax.servlet.annotation.WebListener;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebListener
public class ContextLoaderListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
         System.out.println("容器启动");
        //创建并生成用户数据列表
        List<User> userList = new ArrayList<>(4);
        User[] users = {
                new User(1,"aaa@qq.com","698D51A19D8A121CE581499D7B701668","小城往事","江苏徐州","user1.jpg", "看过所有新海诚知名的电影，《秒速五厘米》、《云之彼端，约定的地方》、《追逐繁星的孩子》、《言叶之庭》，甚至早期的《星之声》我也看过。这次的《你的名字》我个人认为是这几部中最好的一部，不得不说，新海诚有点让我刮目相看。",LocalDate.of(2018,6,11)),
                new User(2,"bbb@qq.com","BCBE3365E6AC95EA2C0343A2395834DD","盏茶作酒","江苏南京", "user2.jpg","教育一定要因材施教，良好的教育方法是迈向成功的开始。熊猫虽说身体肥胖，没有尖牙利爪，不是学习武术的好材料，但是经过浣熊师傅的开创性的教育，最终也可以一跃而起，凭自己的实力从师傅手里夺得了包子。",LocalDate.of(2019,10,1)),
                new User(3,"ccc@qq.com","310DCBBF4CCE62F762A2AAA148D556BD","小幸运","浙江杭州", "user3.jpg","《烈火英雄》是中国电影史上第一次大规模聚焦消防员群体的影片，观看完《烈火英雄》让我对消防员充满了深深的敬意，下面是电影《烈火英雄》观后感，《烈火英雄》用震撼的场面、感人的情节，向我们展示了消防救援队伍的英勇形象，在此希望我们的英雄们，每次执行任务，都能平安归来。",LocalDate.of(2012,4,2)),
        };
        userList = Arrays.asList(users);

        //创建并生成图书数据列表
        List<Book> bookList = new ArrayList<>(11);
        Book[] books ={
                new Book(1,"漫长的婚约","book1.jpg","[法]塞巴斯蒂安"),
                new Book(2,"庸人自扰","book2.jpg","[英]戴伦·麦加维"),
                new Book(3,"绿山墙的安妮","book3.jpg","[美]理查德·耶茨"),
                new Book(4,"敌人与邻居","book4.jpg","[英]伊恩·布莱克"),
                new Book(5,"哀伤级","book5.jpg","[法]钟晓阳"),
                new Book(6,"漫长的婚约","book1.jpg","[法]塞巴斯蒂安"),
                new Book(7,"庸人自扰","book2.jpg","[英]戴伦·麦加维"),
                new Book(8,"绿山墙的安妮","book3.jpg","[美]理查德·耶茨"),
                new Book(9,"敌人与邻居","book4.jpg","[英]伊恩·布莱克"),
                new Book(10,"哀伤级","book5.jpg","[法]钟晓阳"),
        };
        bookList = Arrays.asList(books);
        //获得全局变量
        ServletContext servletContext = sce.getServletContext();
        //设置全局变量属性，将用户和图书列表数据记入，整个应用可以共享；
        servletContext.setAttribute("userList",userList);
        servletContext.setAttribute("bookList",bookList);

    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("容器销毁");
    }
}
