package com.saygood.soft.model;

import java.io.Serializable;

/**
 * 用户信息model
 * Created by kriszhang on 16/6/18.
 */
public class UserInfo implements Serializable{
    /**
     *
     */
    private static final long serialVersionUID = 1L;

    private int id;
    private String account;
    private String pwd;
    private String img;
    private String token;
    private String passport;
    private String email;
    private String nickname;
    private String note;
    private float medal;
    private float points;
    private float visit_counts;
    private float fans;
    private float fan_to;
    private float zhaunfa;
    private float shoucang;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getPassport() {
        return passport;
    }

    public void setPassport(String passport) {
        this.passport = passport;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public float getMedal() {
        return medal;
    }

    public void setMedal(float medal) {
        this.medal = medal;
    }

    public float getPoints() {
        return points;
    }

    public void setPoints(float points) {
        this.points = points;
    }

    public float getVisit_counts() {
        return visit_counts;
    }

    public void setVisit_counts(float visit_counts) {
        this.visit_counts = visit_counts;
    }

    public float getFans() {
        return fans;
    }

    public void setFans(float fans) {
        this.fans = fans;
    }

    public float getFan_to() {
        return fan_to;
    }

    public void setFan_to(float fan_to) {
        this.fan_to = fan_to;
    }

    public float getZhaunfa() {
        return zhaunfa;
    }

    public void setZhaunfa(float zhaunfa) {
        this.zhaunfa = zhaunfa;
    }

    public float getShoucang() {
        return shoucang;
    }

    public void setShoucang(float shoucang) {
        this.shoucang = shoucang;
    }
}
