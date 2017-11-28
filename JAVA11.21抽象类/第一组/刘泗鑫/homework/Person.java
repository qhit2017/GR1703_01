package com.homework;

public abstract class Person {
	
	Person(String name,int age){
		this.name = name;
		this.age = age;
		
	}
	
	private String name;
	private int age;
	private char sex;
	private double weight;
	
	
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
	public double getWeight() {
		return weight;
	}
	public void setWeight(double weight) {
		this.weight = weight;
	}
	
	public abstract String getContent();
	
	
	public void say(){
		System.out.println(getContent());
	}
}
