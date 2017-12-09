package com.zz;

public class Student {
	
	private String name;
	
	private int age;
	
	private char sex;
	
	private String addrees;

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

	public String getAddrees() {
		return addrees;
	}

	public void setAddrees(String addrees) {
		this.addrees = addrees;
	}
	
	public void info(){
		System.out.println("姓名:"+name+",年龄"+age+"岁,性别"+sex+"，住址："+addrees);
	}
	

}
