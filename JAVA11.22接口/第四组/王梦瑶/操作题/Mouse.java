package com.zueye;

public class Mouse implements Animal{
	private String name;
	private String varitey;
	private String color;
	private int age;
	private int count;
	
	public void Mouse(){
		
	}
	public void Mouse(String name,String varitey){
		this.name=name;
		this.varitey=varitey;
		
	}
	@Override
	public void eat() {
		// TODO Auto-generated method stub
		System.out.println("��ϲ���Դ���");
	}

	@Override
	public void call() {
		// TODO Auto-generated method stub
		System.out.println("�����");
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getVaritey() {
		return varitey;
	}
	public void setVaritey(String varitey) {
		this.varitey = varitey;
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
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	

}
