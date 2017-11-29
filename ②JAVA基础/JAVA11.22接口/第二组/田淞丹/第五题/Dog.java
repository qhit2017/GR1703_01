package com.liumaosheng5;

public class Dog implements Animal{

	@Override
	public void eat() {
		// TODO Auto-generated method stub
		System.out.println("Ï²»¶³Ô¹ÇÍ·£¡");
	}

	@Override
	public void call() {
		// TODO Auto-generated method stub
		System.out.println("ÍôÍôÍô£¡");
	}
	private String name;
	private int age;
	private String variety;
	private String color;
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

	public String getVariety() {
		return variety;
	}

	public void setVariety(String variety) {
		this.variety = variety;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}
	Dog(){
		
	}
	Dog(String name){
		this.name=name;
	}
	

	

}
