package com.pri;

public class Demo1 {
	
	private String name;
	private char sex;
	private String phonenum;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public char getSex() {
		return sex;
	}
	public void setSex(char sex) {
		this.sex = sex;
	}
	public String getPhonenum() {
		return phonenum;
	}
	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}
	
	
	public void info(){
		System.out.println("姓名:"+name+"性别："+sex+"电话："+phonenum);
	}

}
