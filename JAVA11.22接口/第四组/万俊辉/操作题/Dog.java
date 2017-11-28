package com.WanJunHui;

public class Dog implements Aniaml{

	private String name;
	private String color;
	private String pinzhong;
	private int age;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getPinzhong() {
		return pinzhong;
	}

	public void setPinzhong(String pinzhong) {
		this.pinzhong = pinzhong;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	@Override
	public void eat() {
		// TODO Auto-generated method stub
		System.out.println("¾×½À...");
	}

	@Override
	public void call() {
		// TODO Auto-generated method stub
		System.out.println("ÍôÍôÍô...");
	}

	Dog(){
		
	}
	Dog(String name){
		this.name=name;
	}
	
}
