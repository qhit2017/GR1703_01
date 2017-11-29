package com.zuoy21;

public class Sudent extends Preson {
	Sudent(String name, char sex, int age) {
		super(name, sex, age);
	}


	public String work;

	
	public String getContent() {
		System.out.println("我是"+getName()+",性别"+getSex()+",年龄"+getAge());
		return "我喜欢吃";
	}
	
	
	
	
	
	
}
