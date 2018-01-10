package com.coursedesign.pojo;

public class Course {
    private String cno;

    private String cname;

    private String place;

    private String weektime;

    private Integer credit;

    private Integer galleryful;

    private String tid;

    private String cDesc;


    @Override
    public String toString() {
        return "Course{" +
                "cno='" + cno + '\'' +
                ", cname='" + cname + '\'' +
                ", place='" + place + '\'' +
                ", weektime='" + weektime + '\'' +
                ", credit=" + credit +
                ", galleryful=" + galleryful +
                ", tid='" + tid + '\'' +
                ", cDesc='" + cDesc + '\'' +
                '}';
    }


    public Course(String cno, String cname, String place, String weektime, Integer credit, Integer galleryful, String tid, String cDesc) {
        this.cno = cno;
        this.cname = cname;
        this.place = place;
        this.weektime = weektime;
        this.credit = credit;
        this.galleryful = galleryful;
        this.tid = tid;
        this.cDesc = cDesc;
    }

    public Course() {
        super();
    }

    public String getCno() {
        return cno;
    }

    public void setCno(String cno) {
        this.cno = cno == null ? null : cno.trim();
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname == null ? null : cname.trim();
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place == null ? null : place.trim();
    }

    public String getWeektime() {
        return weektime;
    }

    public void setWeektime(String weektime) {
        this.weektime = weektime == null ? null : weektime.trim();
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

    public String getTid() {
        return tid;
    }

    public void setTid(String tid) {
        this.tid = tid == null ? null : tid.trim();
    }

    public String getcDesc() {
        return cDesc;
    }

    public void setcDesc(String cDesc) {
        this.cDesc = cDesc == null ? null : cDesc.trim();
    }
}