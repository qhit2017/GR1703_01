package com.Square;


public class Square implements Shape{

	/*
	 * b.���������Σ�ʵ����״����ӿڡ�
	 * Ҫ�������ξ��е����԰�����
	 * �߳����ܳ������������˽�У� ��
	 * ���������ֹ��췽��
	 * ��1 �޲ι��췽�� 2 ����Ϊ�߳��Ĺ��췽����
	 */


	private double Length;   	//�߳�
	private double Perimeter;   //�ܳ�
	private double Acreage;		//���
	
	Square(){
		
	}
	Square(double Length){
		this.Length = Length;
	}
	public double getLength() {
		return Length;
	}

	public void setLength(double Length) {
		Length = Length;
	}

	public double getPerimeter() {
		return Perimeter;
	}

	public void setPerimeter(double perimeter) {
		Perimeter = perimeter;
	}

	public double getAcreage() {
		return Acreage;
	}

	public void setAcreage(double acreage) {
		Acreage = acreage;
	}

	@Override
	public void perimeter() {
		// TODO Auto-generated method stub
		System.out.println("�����ε��ܳ��ǣ�"+Length*4);
	}

	@Override
	public void acreage() {
		// TODO Auto-generated method stub
		System.out.println("�����ε�����ǣ�"+Length*Length);	
	}
	
	
}
