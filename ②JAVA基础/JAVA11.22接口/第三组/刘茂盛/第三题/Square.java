package com.liumaosheng3;

public class Square implements Shape{

	@Override
	public void perimeter() {
		// TODO Auto-generated method stub
		System.out.println("这个正方形的周长是"+side*4);
	}

	@Override
	public void area() {
		// TODO Auto-generated method stub
		System.out.println("这个正方形的面积是"+side*side);
	}
	private int side;
	private int perimeter;
	private int area;
	public int getside() {
		return side;
	}

	public void setside(int side) {
		this.side = side;
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
	Square(){
		
	}
	Square(int side){
		this.side=side;
	}
	
	
}
