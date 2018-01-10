package com.coursedesign.vo.student_vo;

import java.util.Date;

/**
 * 学号、姓名、性别、学院名、生日
 */
public class Studentinfo {

    private String sid;

    private String sname;

    private String sSex;

    private String dept;//学院名

    private Date sBirthday;


    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
    }

    public String getDept() {
        return dept;
    }

    public Studentinfo(String sid, String sname, String sSex, String dept, Date sBirthday) {
        this.sid = sid;
        this.sname = sname;
        this.sSex = sSex;
        this.dept = dept;
        this.sBirthday = sBirthday;
    }

    public void setDept(String dept) {
        this.dept = dept;
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

    public Date getsBirthday() {
        return sBirthday;
    }

    public void setsBirthday(Date sBirthday) {
        this.sBirthday = sBirthday;
    }
}
