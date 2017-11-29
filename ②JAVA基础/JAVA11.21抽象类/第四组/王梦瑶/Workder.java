package com.zuoy21;

public class Workder extends Preson{

	Workder(String name, char sex, int age) {
		super(name, sex, age);
		// TODO Auto-generated constructor stub
	}

	@Override
	public String getContent() {
		System.out.println("我的名字"+getName()+"，性别"+getSex()+"年龄"+getAge());
		return "我每天好忙啊";
	}

		
	
	
	
	
	

}
