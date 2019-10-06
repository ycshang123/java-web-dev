package com.bo.entity;/*@ClassName User
 *@Description:todo
 *@author yc_shang
 *@Date2019/10/4
 *@Version 1.0
 **/

import java.time.LocalDate;

public class User {
    private Integer id;
    private String account;
    private String password;
    private String nickname;
    private String address;
    private LocalDate joinDate;
    private String talk;
    private String avatar;

    public User() {
    }

    public User(Integer id, String account, String password, String nickname, String address, LocalDate joinDate, String talk, String avatar) {
        this.id = id;
        this.account = account;
        this.password = password;
        this.nickname = nickname;
        this.address = address;
        this.joinDate = joinDate;
        this.talk = talk;
        this.avatar = avatar;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public LocalDate getJoinDate() {
        return joinDate;
    }

    public void setJoinDate(LocalDate joinDate) {
        this.joinDate = joinDate;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getTalk() {
        return talk;
    }

    public void setTalk(String talk) {
        this.talk = talk;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", account='" + account + '\'' +
                ", password='" + password + '\'' +
                ", nickname='" + nickname + '\'' +
                ", address='" + address + '\'' +
                ", joinDate=" + joinDate +
                ", talk='" + talk + '\'' +
                ", avatar='" + avatar + '\'' +
                '}';
    }
}

