package zuoye22;

public class tixing	implements shape {
	private	double	area;
	private	double	perimeter;
	private	double	high;
	public double getArea() {
		return area;
	}

	public void setArea(double area) {
		this.area = area;
	}

	public double getPerimeter() {
		return perimeter;
	}

	public void setPerimeter(double perimeter) {
		this.perimeter = perimeter;
	}

	public double getHigh() {
		return high;
	}

	public void setHigh(double high) {
		this.high = high;
	}

	public double getShangbian() {
		return shangbian;
	}

	public void setShangbian(double shangbian) {
		this.shangbian = shangbian;
	}

	public double getXiabian() {
		return xiabian;
	}

	public void setXiabian(double xiabian) {
		this.xiabian = xiabian;
	}
	private	double	shangbian;
	private	double	xiabian;
	@Override
	public void area() {
		// TODO Auto-generated method stub
		System.out.println((shangbian+xiabian)*high/2);
	}

	@Override
	public void perimeter() {
		// TODO Auto-generated method stub
		System.out.println("Ìõ¼þ²»×ã");
	}

	tixing(){
		
	}
	tixing(double shangbian,double xiabian){
		
	}

}
