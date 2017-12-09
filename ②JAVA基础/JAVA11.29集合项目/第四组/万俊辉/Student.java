package com.Wjunhui;

public class Student {
	
	private String name;
	private int age;
	private String sex;
	private String address;
	
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

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void info(){
		System.out.println("姓名:"+name+";年龄:"+age+";性别:"+sex+";地址:"+address+".");
	}

}
