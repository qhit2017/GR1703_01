package com.liumaosheng3;

public abstract class Person {
	//����������Person����������󷽷�getContent()�Ż��ַ��������ⶨ��say��������getContent���������������
	//����Sudent��Workder�̳�Person�ࣻ��ʵ�ֳ�����ķ���getContent��ʵ�������󲢷ֱ����say�������� ��
	String name;
	int age;
	char sex;
	String work;
	public abstract void getContent();
	
	public void say(){
		getContent();
	}
}
