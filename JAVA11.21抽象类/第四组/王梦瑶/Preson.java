package com.zuoy21;
	//����һ����
public abstract class Preson {
	
	private  String name;
	private char sex;
	private  int age;
	//����һ������
	public abstract String getContent();
	//����say����
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
	//����һ������
	Preson(String name,char sex,int age){
		this.name=name;
		this.sex=sex;
		this.age=age;
	}
	
}
