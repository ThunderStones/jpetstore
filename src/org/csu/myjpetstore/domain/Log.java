package org.csu.myjpetstore.domain;

import java.util.Date;

public class Log {
    public Date getDate() {
        return date;
    }

    private final Date date;
    private String username;
    private String url;
    public enum operation {
        ADD, DELETE, QUERY, MODIFY, NULL
    }
    private operation operate;

    public Log(String username, String url, operation operate) {
        this.date = new Date();
        this.username = username;
        this.url = url;
        this.operate = operate;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getOperate() {
        return operate != null ? operate.toString() : "";

    }

    public void setOperate(operation operate) {
        this.operate = operate;
    }

    public static void main(String[] args) {
        System.out.println(new Log("", "", operation.ADD).getOperate());
    }
}
