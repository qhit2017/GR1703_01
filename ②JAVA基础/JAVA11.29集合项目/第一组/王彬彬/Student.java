package com.infor;

public class Student {

	private String name;
	private int age;
	private char sex;
	private String address;
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public char getSex() {
		return sex;
	}
	public void setSex(char sex) {
		this.sex = sex;
	}
	
	public void info(){
		System.out.println("我叫"+getName()+",今年"+getAge()+"岁,我是"+getSex()+"生,来自于"+getAddress());
	}
	
}
