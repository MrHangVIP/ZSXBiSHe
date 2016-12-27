package com.zsx.beans;

public class UserBean {

	private String userPhone;
	
	private String userPass;
	
	private int age;
	
	public UserBean(String userPhone, String userPass) {
		this.userPhone = userPhone;
		this.userPass = userPass;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserPass() {
		return userPass;
	}

	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	
	
}
