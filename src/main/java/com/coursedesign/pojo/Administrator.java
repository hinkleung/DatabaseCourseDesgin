package com.coursedesign.pojo;

import java.util.Date;

public class Administrator {
    private String aid;

    private String aname;

    private String aSex;

    private Date aBirthday;

    private String aPwd;

    public Administrator(String aid, String aname, String aSex, Date aBirthday, String aPwd) {
        this.aid = aid;
        this.aname = aname;
        this.aSex = aSex;
        this.aBirthday = aBirthday;
        this.aPwd = aPwd;
    }

    public Administrator() {
        super();
    }

    public String getAid() {
        return aid;
    }

    public void setAid(String aid) {
        this.aid = aid == null ? null : aid.trim();
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname == null ? null : aname.trim();
    }

    public String getaSex() {
        return aSex;
    }

    public void setaSex(String aSex) {
        this.aSex = aSex == null ? null : aSex.trim();
    }

    public Date getaBirthday() {
        return aBirthday;
    }

    public void setaBirthday(Date aBirthday) {
        this.aBirthday = aBirthday;
    }

    public String getaPwd() {
        return aPwd;
    }

    public void setaPwd(String aPwd) {
        this.aPwd = aPwd == null ? null : aPwd.trim();
    }

    @Override
    public String toString() {
        return "Administrator{" +
                "aid='" + aid + '\'' +
                ", aname='" + aname + '\'' +
                ", aSex='" + aSex + '\'' +
                ", aBirthday=" + aBirthday +
                ", aPwd='" + aPwd + '\'' +
                '}';
    }
}