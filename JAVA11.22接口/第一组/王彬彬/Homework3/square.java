package Homework3;

public class square implements Shape{

	private int sideLength;
	private int perimeter;
	private int area;
	
	public int getSideLength() {
		return sideLength;
	}
	public void setSideLength(int sideLength) {
		this.sideLength = sideLength;
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

	
	square(){
		
	}
	square(int perimeter){
		this.perimeter=perimeter;
	}
	


	public void perimeter() {
		System.out.println("周长是"+perimeter);
		
	}
	
	public void area() {
		System.out.println("面积是"+area);
		
	}

	
	
	
}
