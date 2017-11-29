package com.Person;

public class Sudent extends person{
	
	
	
	Sudent(String name, int age) {
		super(name, age);
		// TODO Auto-generated constructor stub
	}


	@Override
	public String getContent() {
		System.out.println("我的名字是"+getName()+",今年"+getAge()+"岁,性别"
	+getSex()+",体重"+getWeight());
		return null;
	}
	
	
	

	
	
}
