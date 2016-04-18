package com.saygood.soft.model;

import java.io.Serializable;

/**
 * Created by kriszhang on 16/4/16.
 */
public class ScanViewModel implements Serializable{
    /**
     *
     */
    private static final long serialVersionUID = 1L;

    private int id;
    private String title;
    private String content;
    private String publisher;
    private String scanUrl;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public String getScanUrl() {
        return scanUrl;
    }

    public void setScanUrl(String scanUrl) {
        this.scanUrl = scanUrl;
    }
}
