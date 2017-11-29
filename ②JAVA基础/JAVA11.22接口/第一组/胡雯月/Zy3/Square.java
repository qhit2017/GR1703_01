package zuoye1;

public class Square  implements Shape {

	@Override
	public void perimeter() {
		// TODO Auto-generated method stub
		System.out.println("side*4");
		
	}

	@Override
	public void area() {
		// TODO Auto-generated method stub
		System.out.println("side*side");
		
	}
	
	private int side;
	private int perimeter;
	private int area;
	public int getSide() {
		return side;
	}

	public void setSide(int side) {
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
	
	public void Square(){
		
	}
	public void Square(int side){
		this.side=side;
	}
	

}
