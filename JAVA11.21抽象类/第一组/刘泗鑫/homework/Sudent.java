package com.homework;

public class Sudent extends Person{

	@Override
	public String getContent() {
		System.out.println("我是："+getName()+",是一个"+getSex()+",今年"+getAge()+"岁了.");
		// TODO Auto-generated method stub
		return null;
	}
	
	Sudent(String name, int age) {
		super(name, age);
		// TODO Auto-generated constructor stub
	}
	
	
}
