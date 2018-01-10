package com.coursedesign.pojo;

import java.util.Date;

public class Teacher {
    private String tid;

    private String tname;

    private String tSex;

    private Date tBirthday;

    @Override
    public String toString() {
        return "Teacher{" +
                "tid='" + tid + '\'' +
                ", tname='" + tname + '\'' +
                ", tSex='" + tSex + '\'' +
                ", tBirthday=" + tBirthday +
                ", tPwd='" + tPwd + '\'' +
                ", tTitle='" + tTitle + '\'' +
                '}';
    }

    private String tPwd;

    private String tTitle;

    public Teacher(String tid, String tname, String tSex, Date tBirthday, String tPwd, String tTitle) {
        this.tid = tid;
        this.tname = tname;
        this.tSex = tSex;
        this.tBirthday = tBirthday;
        this.tPwd = tPwd;
        this.tTitle = tTitle;
    }

    public Teacher() {
        super();
    }

    public String getTid() {
        return tid;
    }

    public void setTid(String tid) {
        this.tid = tid == null ? null : tid.trim();
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname == null ? null : tname.trim();
    }

    public String gettSex() {
        return tSex;
    }

    public void settSex(String tSex) {
        this.tSex = tSex == null ? null : tSex.trim();
    }

    public Date gettBirthday() {
        return tBirthday;
    }

    public void settBirthday(Date tBirthday) {
        this.tBirthday = tBirthday;
    }

    public String gettPwd() {
        return tPwd;
    }

    public void settPwd(String tPwd) {
        this.tPwd = tPwd == null ? null : tPwd.trim();
    }

    public String gettTitle() {
        return tTitle;
    }

    public void settTitle(String tTitle) {
        this.tTitle = tTitle == null ? null : tTitle.trim();
    }
}