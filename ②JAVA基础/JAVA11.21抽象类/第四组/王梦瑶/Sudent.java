package com.zuoy21;

public class Sudent extends Preson {
	Sudent(String name, char sex, int age) {
		super(name, sex, age);
	}


	public String work;

	
	public String getContent() {
		System.out.println("����"+getName()+",�Ա�"+getSex()+",����"+getAge());
		return "��ϲ����";
	}
	
	
	
	
	
	
}
