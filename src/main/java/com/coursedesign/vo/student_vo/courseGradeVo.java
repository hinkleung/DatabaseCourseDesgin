package com.coursedesign.vo.student_vo;

/**
 * 课程号、课程名、学分、成绩、学号
 */
public class courseGradeVo {

    private String cno;
    private String cname;
    private Integer credit;
    private Integer grade;
    private String sid;

    public courseGradeVo(String cno, String cname, Integer credit, Integer grade, String sid) {
        this.cno = cno;
        this.cname = cname;
        this.credit = credit;
        this.grade = grade;
        this.sid = sid;
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

    public Integer getCredit() {
        return credit;
    }

    public void setCredit(Integer credit) {
        this.credit = credit;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
    }
}
