package com.lanqiao.store.vo;

import java.sql.Timestamp;
import java.util.Date;
import oracle.sql.TIMESTAMP;


public class Article {
    private Integer articleId;
    private String title;
    private String type;
    private String content;
    private String writer;
    private TIMESTAMP writeDate;

    public Article() {
    }

    public Article(Integer articleId, String title, String type, String content, String writer, TIMESTAMP writeDate) {
        this.articleId = articleId;
        this.title = title;
        this.type = type;
        this.content = content;
        this.writer = writer;
        this.writeDate = writeDate;
    }

    public Integer getArticleId() {
        return articleId;
    }

    public void setArticleId(Integer articleId) {
        this.articleId = articleId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public TIMESTAMP getWriteDate() {
        return writeDate;
    }

    public void setWriteDate(TIMESTAMP writeDate) {
        this.writeDate = writeDate;
    }

    @Override
    public String toString() {
        return "Article{" +
                "articleId=" + articleId +
                ", title='" + title + '\'' +
                ", type='" + type + '\'' +
                ", content='" + content + '\'' +
                ", writer='" + writer + '\'' +
                ", writeDate=" + writeDate +
                '}';
    }
}
