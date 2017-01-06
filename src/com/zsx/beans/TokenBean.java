package com.zsx.beans;

public class TokenBean  {
	
	private int id;
	
	private String userPhone;
	
	private String token;
	
	private long createTime;

	public TokenBean(){
		
	}
	
	public TokenBean(String token,String userPhone){
		this.token=token;
		this.userPhone=userPhone;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public long getCreateTime() {
		return createTime;
	}

	public void setCreateTime(long createTime) {
		this.createTime = createTime;
	}
	
	
	
}
