package com.Square;


public class Trapezoid implements Shape{

	/*Trapezoid  ����
	 * c.�������Σ�ʵ����״����ӿڡ�
	 * Ҫ�����ξ��е����԰�����
	 * �ϱ��ϡ��±߳����ߡ��ܳ������������˽�У� ��
	 * ���������ֹ��췽����1 �޲ι��췽�� 2 ����Ϊ�ϱ߳����±߳��Ĺ��췽����
	 */

	private double shangbianchang;
	private double xiabianchang;
	private double hight;
	private double Perimeter;
	private double Acreage;
	
	Trapezoid(){
		
	}
	Trapezoid(double shangbianchang,double xiabianchang){
		this.shangbianchang = shangbianchang;
		this.xiabianchang = xiabianchang;
	}
	
	public double getShangbianchang() {
		return shangbianchang;
	}

	public void setShangbianchang(double shangbianchang) {
		this.shangbianchang = shangbianchang;
	}

	public double getXiabianchang() {
		return xiabianchang;
	}

	public void setXiabianchang(double xiabianchang) {
		this.xiabianchang = xiabianchang;
	}

	public double getHight() {
		return hight;
	}

	public void setHight(double hight) {
		this.hight = hight;
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
		System.out.println("���ε��ܳ��ǣ�"+(shangbianchang+xiabianchang+hight));
	}
	
	@Override
	public void acreage() {
		// TODO Auto-generated method stub
		System.out.println("���ε�����ǣ�"+(shangbianchang+xiabianchang)*hight/2);
		
	}
	
}
