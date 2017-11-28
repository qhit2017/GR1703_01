package com.Person;

public abstract class person {
	private String name;
	private int age;
	private double weight;
	private char sex;
	
	person( String name,int age){
		this.name=name;
		this.age=age;
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

	public double getWeight() {
		return weight;
	}

	public void setWeight(double weight) {
		this.weight = weight;
	}

	public char getSex() {
		return sex;
	}

	public void setSex(char sex) {
		this.sex = sex;
	}

	
	public abstract String getContent();
		
	
	
	public void say(){
		System.out.println(getContent());
	}

}
