package com.xingwenzhe;

public class Tongxunlu {
	
	private String name;
	
	private char sex;
	
	private String phonenumber;

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

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	
	public void info(){
		System.out.println("姓名："+name+",性别"+sex+",电话号码"+phonenumber);
	}

}
