package com.board.domain;

import java.sql.Time;
import java.util.Date;

public class BoardVO {
	private int no;
	private String post_title;
	private String post_content;
	private String post_footer;
	private Date post_date;
	private Time post_time;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getPost_title() {
		return post_title;
	}
	public void setPost_title(String post_title) {
		this.post_title = post_title;
	}
	public String getPost_content() {
		return post_content;
	}
	public void setPost_content(String post_content) {
		this.post_content = post_content;
	}
	public String getPost_footer() {
		return post_footer;
	}
	public void setPost_footer(String post_footer) {
		this.post_footer = post_footer;
	}
	public Date getPost_date() {
		return post_date;
	}
	public void setPost_date(Date post_date) {
		this.post_date = post_date;
	}
	public Time getPost_time() {
		return post_time;
	}
	public void setPost_time(Time post_time) {
		this.post_time = post_time;
	}
}