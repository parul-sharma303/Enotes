package com.User;

import java.util.Date;

public class post {
	private int id;
	private String title;
	private String content;
	private Date pdate;
	private Userdetails user;
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
	public Date getPdate() {
		return pdate;
	}
	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}
	public Userdetails getUser() {
		return user;
	}
	public void setUser(Userdetails user) {
		this.user = user;
	}
	public post(int id, String title, String content, Date pdate, Userdetails user) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.pdate = pdate;
		this.user = user;
	}
	public post() {
		super();
	
	}
	
	

}
