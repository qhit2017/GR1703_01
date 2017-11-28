package com.Animal;

public class Laoshu implements Animal{

	/*
	 * c.创建老鼠 实现动物这个接口。
	 * 要求老鼠具有的属性包括：
	 * 姓名、品种、几条腿、体重（属性私有） ，
	 * 并创建两种构造方法（1 无参构造方法 2 参数为姓名、品种的构造方法）
	 */
	
	private String name;
	private String pinzhong;
	private int dui;
	private int weight;
	
	Laoshu(){
		
	}
	Laoshu(String name,String pinzhong){
		this.name = name;
		this.pinzhong = pinzhong;
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPinzhong() {
		return pinzhong;
	}

	public void setPinzhong(String pinzhong) {
		this.pinzhong = pinzhong;
	}

	public int getDui() {
		return dui;
	}

	public void setDui(int dui) {
		this.dui = dui;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	@Override
	public void eat() {
		// TODO Auto-generated method stub
		System.out.println("喜欢吃奶酪");
	}

	@Override
	public void call() {
		// TODO Auto-generated method stub
		System.out.println("叽叽叫");
	}
	
	

}
