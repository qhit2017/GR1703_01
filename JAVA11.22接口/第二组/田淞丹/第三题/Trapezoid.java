package com.liumaosheng3;

public class Trapezoid implements Shape{

	@Override
	public void perimeter() {
		// TODO Auto-generated method stub
		System.out.println("梯形的周长不会求！");
	}

	@Override
	public void area() {
		// TODO Auto-generated method stub
		System.out.println("梯形的面积是"+(onside+xiaside)*high/2);
	}
	private int onside;
	private int xiaside;
	private int high;
	private int perimeter;
	private int area;
	public int getOnside() {
		return onside;
	}

	public void setOnside(int onside) {
		this.onside = onside;
	}

	public int getXiaside() {
		return xiaside;
	}

	public void setXiaside(int xiaside) {
		this.xiaside = xiaside;
	}

	public int getHigh() {
		return high;
	}

	public void setHigh(int high) {
		this.high = high;
	}

	public int getPerimeter() {
		return perimeter;
	}

	public void setPerimeter(int perimeter) {
		this.perimeter = perimeter;
	}

	public int getArea() {
		return area;
	}

	public void setArea(int area) {
		this.area = area;
	}
	public Trapezoid() {
		// TODO Auto-generated constructor stub
	}
	Trapezoid(int onside,int xiaside){
		this.onside=onside;
		this.xiaside=xiaside;
	}
	

	

}
