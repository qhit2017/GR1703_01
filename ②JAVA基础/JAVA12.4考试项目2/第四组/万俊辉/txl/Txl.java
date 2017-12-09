package com.txl;

public class Txl {
	
	private String name;
	private char sex;
	private String sjh;
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
	public String getSjh() {
		return sjh;
	}
	public void setSjh(String sjh) {
		this.sjh = sjh;
	}
	public void info(){
		System.out.println("姓名："+name+",性别："+sex+",手机号："+sjh+".");
	}

}
