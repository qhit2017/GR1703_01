package zuoye22;

public class square implements	shape{
	private double  bianchang;
	private double	perimeter;
	public double getBianchang() {
		return bianchang;
	}

	public void setBianchang(double bianchang) {
		this.bianchang = bianchang;
	}

	public double getPerimeter() {
		return perimeter;
	}

	public void setPerimeter(double perimeter) {
		this.perimeter = perimeter;
	}

	public double getArea() {
		return area;
	}

	public void setArea(double area) {
		this.area = area;
	}
	private	double	area;
	
	@Override
	public void area() {
		// TODO Auto-generated method stub
	System.out.println(bianchang*bianchang);	
	}

	@Override
	public void perimeter() {
		// TODO Auto-generated method stub
		System.out.println(4*bianchang);
	}
	square(){
		
	}
	square(double bianchang){
		
	}	
		
	
	
}
