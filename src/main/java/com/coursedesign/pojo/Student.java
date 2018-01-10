package com.coursedesign.pojo;

import java.util.Date;

public class Student {
    private String sid;

    private String dno;

    private String sname;

    private String sSex;

    private Date sBirthday;

    private String sPwd;

    @Override
    public String toString() {
        return "Student{" +
                "sid='" + sid + '\'' +
                ", dno='" + dno + '\'' +
                ", sname='" + sname + '\'' +
                ", sSex='" + sSex + '\'' +
                ", sBirthday=" + sBirthday +
                ", sPwd='" + sPwd + '\'' +
                '}';
    }

    public Student(String sid, String dno, String sname, String sSex, Date sBirthday, String sPwd) {
        this.sid = sid;
        this.dno = dno;
        this.sname = sname;
        this.sSex = sSex;
        this.sBirthday = sBirthday;
        this.sPwd = sPwd;
    }

    public Student() {
        super();
    }

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid == null ? null : sid.trim();
    }

    public String getDno() {
        return dno;
    }

    public void setDno(String dno) {
        this.dno = dno == null ? null : dno.trim();
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname == null ? null : sname.trim();
    }

    public String getsSex() {
        return sSex;
    }

    public void setsSex(String sSex) {
        this.sSex = sSex == null ? null : sSex.trim();
    }

    public Date getsBirthday() {
        return sBirthday;
    }

    public void setsBirthday(Date sBirthday) {
        this.sBirthday = sBirthday;
    }

    public String getsPwd() {
        return sPwd;
    }

    public void setsPwd(String sPwd) {
        this.sPwd = sPwd == null ? null : sPwd.trim();
    }
}