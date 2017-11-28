package com.Square;


public class Trapezoid implements Shape{

	/*Trapezoid  梯形
	 * c.创建梯形，实现形状这个接口。
	 * 要求梯形具有的属性包括：
	 * 上边上、下边长、高、周长、面积（属性私有） ，
	 * 并创建两种构造方法（1 无参构造方法 2 参数为上边长、下边长的构造方法）
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
		System.out.println("梯形的周长是："+(shangbianchang+xiabianchang+hight));
	}
	
	@Override
	public void acreage() {
		// TODO Auto-generated method stub
		System.out.println("梯形的面积是："+(shangbianchang+xiabianchang)*hight/2);
		
	}
	
}
