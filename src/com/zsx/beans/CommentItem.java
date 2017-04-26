package com.zsx.beans;

import java.io.Serializable;

public class CommentItem implements Serializable {

	private int id;
	private int postbarId;
	private String userPhone;
	private String content;
	private String createTime;
	private String headUrl;
	private String nickName;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPostbarId() {
		return postbarId;
	}
	public void setPostbarId(int postbarId) {
		this.postbarId = postbarId;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	public String getHeadUrl() {
		return headUrl;
	}
	public void setHeadUrl(String headUrl) {
		this.headUrl = headUrl;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	
	
	
}
