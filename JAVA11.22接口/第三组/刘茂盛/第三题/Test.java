package com.liumaosheng3;

public class Test {

	public static void main(String[] args) {
		Square s=new Square();
		s.setArea(16);
		s.setPerimeter(16);
		s.setside(4);
		s.perimeter();
		s.area();
		Trapezoid t=new Trapezoid();
		t.setOnside(2);
		t.setXiaside(4);
		t.setHigh(2);
		t.setPerimeter(8);
		t.setArea(6);
		t.perimeter();
		t.area();

	}
}
