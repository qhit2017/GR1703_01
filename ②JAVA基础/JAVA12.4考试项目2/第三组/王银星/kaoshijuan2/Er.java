package com.kaoshijuan2;

public class Er {
	private String name;
	private char sex;
	private int age;
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
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public void info(){
		System.out.println("姓名："+name+"\t性别："+sex+"\t年龄："+age);
	}

}
