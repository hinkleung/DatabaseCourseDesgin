package com.coursedesign.vo.admin_vo;

public class CouTeaVo {
    private String cno;

    private String cname;

    private String place;

    private String weektime;

    private Integer credit;

    private Integer galleryful;

    private String c_desc;

    private String tid;

    private String teacherName;

    public CouTeaVo(String cno, String cname, String place, String weektime, Integer credit, Integer galleryful, String c_desc, String tid, String teacherName) {
        this.cno = cno;
        this.cname = cname;
        this.place = place;
        this.weektime = weektime;
        this.credit = credit;
        this.galleryful = galleryful;
        this.c_desc = c_desc;
        this.tid = tid;
        this.teacherName = teacherName;
    }

    public String getCno() {
        return cno;
    }

    public void setCno(String cno) {
        this.cno = cno;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public String getWeektime() {
        return weektime;
    }

    public void setWeektime(String weektime) {
        this.weektime = weektime;
    }

    public Integer getCredit() {
        return credit;
    }

    public void setCredit(Integer credit) {
        this.credit = credit;
    }

    public Integer getGalleryful() {
        return galleryful;
    }

    public void setGalleryful(Integer galleryful) {
        this.galleryful = galleryful;
    }

    public String getC_desc() {
        return c_desc;
    }

    public void setC_desc(String c_desc) {
        this.c_desc = c_desc;
    }

    public String getTid() {
        return tid;
    }

    public void setTid(String tid) {
        this.tid = tid;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }
}
