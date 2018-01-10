package com.coursedesign.vo.teacher_vo;

/**
 * 学号、姓名、课程号、课程名、成绩
 */
public class sc_gradeVo {

    private String sid;
    private String sname;
    private String cno;
    private String cname;
    private Integer grade;

    public sc_gradeVo(String sid, String sname, String cno, String cname, Integer grade) {
        this.sid = sid;
        this.sname = sname;
        this.cno = cno;
        this.cname = cname;
        this.grade = grade;
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

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }
}
