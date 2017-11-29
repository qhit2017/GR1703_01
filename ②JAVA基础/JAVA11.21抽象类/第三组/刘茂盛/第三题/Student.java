package com.liumaosheng3;

public class Student extends Person{

	@Override
	public void getContent() {
		// TODO Auto-generated method stub
		System.out.println("名字："+name+"，年龄"+age+"，性别："+sex+"，每天要"+work);
	}

}
