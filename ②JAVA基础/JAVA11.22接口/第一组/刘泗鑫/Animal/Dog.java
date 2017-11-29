package com.Animal;

public class Dog implements Animal{

	/*
	 *  b.创建狗，实现动物这个接口。
	 *  要求狗具有的属性包括：
	 *  姓名、品种、颜色、年龄（属性私有） ，
	 *  并创建两种构造方法（1 无参构造方法 2 参数为姓名的构造方法）
	 */

	private String name;
	private String pingzhong;
	private String color;
	private int age;
	
	Dog(){
		
	}
	Dog(String name){
		this.name = name;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPingzhong() {
		return pingzhong;
	}

	public void setPingzhong(String pingzhong) {
		this.pingzhong = pingzhong;
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

	@Override
	public void eat() {
		// TODO Auto-generated method stub
		System.out.println("喜欢吃骨头");
	}

	@Override
	public void call() {
		// TODO Auto-generated method stub
		System.out.println("嗷嗷叫");
	}
	

	
	
}
