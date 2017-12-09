package com.aaa;

public class Student {
	private String name;
	private String age;
	private String sex;
	private String dizhi;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String arr) {
		this.age = arr;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String arr) {
		this.sex = arr;
	}
	public String getDizhi() {
		return dizhi;
	}
	public void setDizhi(String dizhi) {
		this.dizhi = dizhi;
	}
	
	public void info(){
		System.out.println("我是"+name+"今年"+age+"岁，性别："+sex+"来自于"+dizhi);
	}
	
	
	
	

}
