package com.Square;


public class Test {
	
	/*
	 * d.创建测试类，分别创建正方形和梯形的实例化对象，
	 * 给对象的属性赋值，
	 * 并且调用对象的周长、面积的方法
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
