package com.coursedesign.pojo;

public class Student_courseKey {
    private String sid;

    private String cno;

    public Student_courseKey(String sid, String cno) {
        this.sid = sid;
        this.cno = cno;
    }

    public Student_courseKey() {
        super();
    }

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid == null ? null : sid.trim();
    }

    public String getCno() {
        return cno;
    }

    public void setCno(String cno) {
        this.cno = cno == null ? null : cno.trim();
    }
}