package com.Animal;

public class Laoshu implements Animal{

	/*
	 * c.�������� ʵ�ֶ�������ӿڡ�
	 * Ҫ��������е����԰�����
	 * ������Ʒ�֡������ȡ����أ�����˽�У� ��
	 * ���������ֹ��췽����1 �޲ι��췽�� 2 ����Ϊ������Ʒ�ֵĹ��췽����
	 */
	
	private String name;
	private String pinzhong;
	private int dui;
	private int weight;
	
	Laoshu(){
		
	}
	Laoshu(String name,String pinzhong){
		this.name = name;
		this.pinzhong = pinzhong;
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPinzhong() {
		return pinzhong;
	}

	public void setPinzhong(String pinzhong) {
		this.pinzhong = pinzhong;
	}

	public int getDui() {
		return dui;
	}

	public void setDui(int dui) {
		this.dui = dui;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	@Override
	public void eat() {
		// TODO Auto-generated method stub
		System.out.println("ϲ��������");
	}

	@Override
	public void call() {
		// TODO Auto-generated method stub
		System.out.println("ߴߴ��");
	}
	
	

}
