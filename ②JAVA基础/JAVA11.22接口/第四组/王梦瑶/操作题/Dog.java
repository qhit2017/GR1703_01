package com.zueye;

public class Dog implements Animal{
	private String name;
	private String variety;
	private String color;
	private int age;
	
	public void Dog(){
		
	}
	public void Dog(String name){
		this.name=name;
	}
	@Override
	public void eat() {
		// TODO Auto-generated method stub
		System.out.println("��ϲ���Թ�ͷ");
	}

	@Override
	public void call() {
		// TODO Auto-generated method stub
		System.out.println("����");
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	

}
