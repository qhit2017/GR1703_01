package Homework3;

public class Trapezoid implements Shape{

	private int lengthAbove;
	private int lengthBelow;
	private int height;
	private int perimeter;
	private int area;
	
	 
	Trapezoid(){
		
	}
	
	Trapezoid(int lengthAbove,int lengthBelow){
		this.lengthAbove=lengthAbove;
		this.lengthBelow=lengthBelow;
	}
	
	

	

	public int getLengthAbove() {
		return lengthAbove;
	}

	public void setLengthAbove(int lengthAbove) {
		this.lengthAbove = lengthAbove;
	}

	public int getLengthBelow() {
		return lengthBelow;
	}

	public void setLengthBelow(int lengthBelow) {
		this.lengthBelow = lengthBelow;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
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

	

	@Override
	public void perimeter() {
		System.out.println("周长是"+perimeter);
		
	}

	@Override
	public void area() {
		System.out.println("面积是"+area);
		
	}

}
