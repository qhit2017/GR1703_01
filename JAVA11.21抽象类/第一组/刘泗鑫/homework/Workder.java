package com.homework;

public class Workder extends Person{

	Workder(String name, int age) {
		super(name, age);
		// TODO Auto-generated constructor stub
	}

	@Override
	public String getContent() {
		System.out.println("���ǣ�"+getName()+",��һ��"+getSex()+",����"+getAge()+"����.");
		// TODO Auto-generated method stub
		return null;
	}

}
