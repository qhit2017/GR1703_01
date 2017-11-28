package zuoye1;

public class Trapezoid implements Shape{

	@Override
	public void perimeter() {
		// TODO Auto-generated method stub
		System.out.println();
		
	}

	@Override
	public void area() {
		// TODO Auto-generated method stub
		System.out.println((upside+below)*tall/2);
		
		
	}
	private int upside;
	private int below;
	private int tall;
	private int perimeter;
	private int area;
	public int getUpside() {
		return upside;
	}

	public void setUpside(int upside) {
		this.upside = upside;
	}

	public int getBelow() {
		return below;
	}

	public void setBelow(int below) {
		this.below = below;
	}

	public int getTall() {
		return tall;
	}

	public void setTall(int tall) {
		this.tall = tall;
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
	public void trapezoid(){
		
	}
	public void trapezoid(int upside,int below){
		this.upside=upside;
		this.below=below;
	}
	

}
