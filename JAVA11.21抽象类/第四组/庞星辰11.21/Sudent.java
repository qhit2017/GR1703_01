package com.Person;

public class Sudent extends person{
	
	
	
	Sudent(String name, int age) {
		super(name, age);
		// TODO Auto-generated constructor stub
	}


	@Override
	public String getContent() {
		System.out.println("�ҵ�������"+getName()+",����"+getAge()+"��,�Ա�"
	+getSex()+",����"+getWeight());
		return null;
	}
	
	
	

	
	
}
