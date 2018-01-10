package com.coursedesign.vo.student_vo;

/**
 * 课程号、地点、时间、学分、可容纳人数、授课教师名字、课程号
 */
public class courseVo {

    private String cname;

    private String place;

    private String weektime;

    private Integer credit;

    private Integer galleryful;

    private String teacherName;

    private String cno;

    //private Integer grade;


    public courseVo(String cname, String place, String weektime, Integer credit, Integer galleryful, String teacherName, String cno) {
        this.cname = cname;
        this.place = place;
        this.weektime = weektime;
        this.credit = credit;
        this.galleryful = galleryful;
        this.teacherName = teacherName;
        this.cno = cno;
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

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }
}
