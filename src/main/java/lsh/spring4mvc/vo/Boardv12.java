package lsh.spring4mvc.vo;

public class Boardv12 {
    private String bdno;
    private String title;
    private String userid;
    private String views;
    private String contents;
    private String regdate;

    public Boardv12() {}

    public Boardv12(String bdno, String title, String userid, String views, String contents, String regdate) {
        this.bdno = bdno;
        this.title = title;
        this.userid = userid;
        this.views = views;
        this.contents = contents;
        this.regdate = regdate;
    }

    public String getBdno() {
        return bdno;
    }

    public void setBdno(String bdno) {
        this.bdno = bdno;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getViews() {
        return views;
    }

    public void setViews(String views) {
        this.views = views;
    }

    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }

    public String getRegdate() {
        return regdate;
    }

    public void setRegdate(String regdate) {
        this.regdate = regdate;
    }
}
