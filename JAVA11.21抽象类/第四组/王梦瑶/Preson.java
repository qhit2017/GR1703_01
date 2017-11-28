package com.zuoy21;
	//抽象化一个类
public abstract class Preson {
	
	private  String name;
	private char sex;
	private  int age;
	//抽象化一个方法
	public abstract String getContent();
	//定义say方法
	public void say(){
		System.out.println(getContent());
	}
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
	//构造一个方法
	Preson(String name,char sex,int age){
		this.name=name;
		this.sex=sex;
		this.age=age;
	}
	
}
