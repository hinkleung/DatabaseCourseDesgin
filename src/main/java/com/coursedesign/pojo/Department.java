package com.coursedesign.pojo;

public class Department {
    private String dno;

    private String dname;

    private String dDesc;

    public Department(String dno, String dname, String dDesc) {
        this.dno = dno;
        this.dname = dname;
        this.dDesc = dDesc;
    }

    public Department() {
        super();
    }

    @Override
    public String toString() {
        return "Department{" +
                "dno='" + dno + '\'' +
                ", dname='" + dname + '\'' +
                ", dDesc='" + dDesc + '\'' +
                '}';
    }

    public String getDno() {
        return dno;
    }

    public void setDno(String dno) {
        this.dno = dno == null ? null : dno.trim();
    }

    public String getDname() {
        return dname;
    }

    public void setDname(String dname) {
        this.dname = dname == null ? null : dname.trim();
    }

    public String getdDesc() {
        return dDesc;
    }

    public void setdDesc(String dDesc) {
        this.dDesc = dDesc == null ? null : dDesc.trim();
    }
}