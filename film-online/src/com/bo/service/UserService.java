package com.bo.service;/*@ClassName UserService
 *@Description:todo
 *@author yc_shang
 *@Date2019/10/5
 *@Version 1.0
 **/

import com.bo.entity.User;
import com.bo.utils.Md5Util;
import java.util.List;
public class UserService {
    private List<User> userList;
    public void setUserList(List<User> userList)
    {
        this.userList = userList;
    }
    public User signIn(String account,String password){
        for(User user : userList){
            if(user.getAccount().equals(account)&&user.getPassword().equals(Md5Util.crypt(password))){
             return user;
            }
        }
        return  null;
    }
}
