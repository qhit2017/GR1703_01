package com.Person;

public class workder extends person{
	workder(String name, int age) {
		super(name, age);
		// TODO Auto-generated constructor stub
	}
	public String work;
	@Override
	public String getContent() {
		System.out.println("�ҵ�������"+getName()+",����"+getAge()+"��,�Ա�"
				+getSex()+",����"+getWeight());
		return null;
	}

}
