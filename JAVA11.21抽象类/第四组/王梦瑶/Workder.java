package com.zuoy21;

public class Workder extends Preson{

	Workder(String name, char sex, int age) {
		super(name, sex, age);
		// TODO Auto-generated constructor stub
	}

	@Override
	public String getContent() {
		System.out.println("�ҵ�����"+getName()+"���Ա�"+getSex()+"����"+getAge());
		return "��ÿ���æ��";
	}

		
	
	
	
	
	

}
