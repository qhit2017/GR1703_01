package com.Square;


public class Test {
	
	/*
	 * d.���������࣬�ֱ𴴽������κ����ε�ʵ��������
	 * ����������Ը�ֵ��
	 * ���ҵ��ö�����ܳ�������ķ���
	 */

	public static void main(String[] args) {
		
		Square a = new Square(10.5);  
		a.perimeter();
		a.acreage();
		
		Trapezoid b = new Trapezoid();
		b.setShangbianchang(10);
		b.setXiabianchang(20.5);
		b.setHight(10);
		b.perimeter();
		b.acreage();
	}
	
}
