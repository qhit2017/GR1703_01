package com.Animal;

public class Dog implements Animal{

	/*
	 *  b.��������ʵ�ֶ�������ӿڡ�
	 *  Ҫ�󹷾��е����԰�����
	 *  ������Ʒ�֡���ɫ�����䣨����˽�У� ��
	 *  ���������ֹ��췽����1 �޲ι��췽�� 2 ����Ϊ�����Ĺ��췽����
	 */

	private String name;
	private String pingzhong;
	private String color;
	private int age;
	
	Dog(){
		
	}
	Dog(String name){
		this.name = name;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPingzhong() {
		return pingzhong;
	}

	public void setPingzhong(String pingzhong) {
		this.pingzhong = pingzhong;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	@Override
	public void eat() {
		// TODO Auto-generated method stub
		System.out.println("ϲ���Թ�ͷ");
	}

	@Override
	public void call() {
		// TODO Auto-generated method stub
		System.out.println("�໽�");
	}
	

	
	
}
