package com.homework;

public class Sudent extends Person{

	@Override
	public String getContent() {
		System.out.println("���ǣ�"+getName()+",��һ��"+getSex()+",����"+getAge()+"����.");
		// TODO Auto-generated method stub
		return null;
	}
	
	Sudent(String name, int age) {
		super(name, age);
		// TODO Auto-generated constructor stub
	}
	
	
}
