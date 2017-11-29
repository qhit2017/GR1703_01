package com.Square;


public class Square implements Shape{

	/*
	 * b.创建正方形，实现形状这个接口。
	 * 要求正方形具有的属性包括：
	 * 边长、周长、面积（属性私有） ，
	 * 并创建两种构造方法
	 * （1 无参构造方法 2 参数为边长的构造方法）
	 */


	private double Length;   	//边长
	private double Perimeter;   //周长
	private double Acreage;		//面积
	
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
		System.out.println("正方形的周长是："+Length*4);
	}

	@Override
	public void acreage() {
		// TODO Auto-generated method stub
		System.out.println("正方形的面积是："+Length*Length);	
	}
	
	
}
