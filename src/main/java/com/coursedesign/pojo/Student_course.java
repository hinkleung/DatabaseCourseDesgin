package com.coursedesign.pojo;

public class Student_course extends Student_courseKey {
    private Integer grade;

    public Student_course(String sid, String cno, Integer grade) {
        super(sid, cno);
        this.grade = grade;
    }

    public Student_course(String sid, String cno) {
        super(sid, cno);
    }

    public Student_course() {
        super();
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    @Override
    public String toString() {
        return "Student_course{" +
                ", sid='" + getSid()+ '\'' +
                ", cno='" + getCno() + '\'' +
                "grade=" + grade +
                '}';
    }
}