package com.coursedesign.vo.admin_vo;

import java.util.Date;

public class StuInfo {
    private String sid;

    private String sname;

    private String sSex;

    private String dept;//学院名

    private String dno;

    private Date sBirthday;

    private String spwd;//密码

    public StuInfo(String sid, String sname, String sSex, String dept, String dno,String spwd, Date sBirthday) {
        this.sid = sid;
        this.sname = sname;
        this.sSex = sSex;
        this.dept = dept;
        this.dno = dno;
        this.sBirthday = sBirthday;
        this.spwd = spwd;
    }

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getsSex() {
        return sSex;
    }

    public void setsSex(String sSex) {
        this.sSex = sSex;
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept;
    }

    public String getDno() {
        return dno;
    }

    public void setDno(String dno) {
        this.dno = dno;
    }

    public Date getsBirthday() {
        return sBirthday;
    }

    public void setsBirthday(Date sBirthday) {
        this.sBirthday = sBirthday;
    }

    public String getSpwd() {
        return spwd;
    }

    public void setSpwd(String spwd) {
        this.spwd = spwd;
    }
}
