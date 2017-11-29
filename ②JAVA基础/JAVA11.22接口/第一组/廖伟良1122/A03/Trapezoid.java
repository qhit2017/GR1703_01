package A03;

public class Trapezoid implements Shape{

	@Override
	public void girth() {
		// TODO Auto-generated method stub
		System.out.println("梯形周长是:"+girth);
	}

	@Override
	public void acreage() {
		// TODO Auto-generated method stub
		System.out.println("梯形面积是:"+acreage);
	}
	private double TopLength;
	private double DownLength;
	private double high;
	private double girth;
	private double acreage;
	
	public double getTopLength() {
		return TopLength;
	}

	public void setTopLength(double topLength) {
		TopLength = topLength;
	}

	public double getDownLength() {
		return DownLength;
	}

	public void setDownLength(double downLength) {
		DownLength = downLength;
	}

	public double getHigh() {
		return high;
	}

	public void setHigh(double high) {
		this.high = high;
	}

	public double getGirth() {
		return girth;
	}

	public void setGirth(double girth) {
		this.girth = girth;
	}

	public double getAcreage() {
		return acreage;
	}

	public void setAcreage(double acreage) {
		this.acreage = acreage;
	}

	Trapezoid(){
		
	}
	Trapezoid(double TopLength,double DownLength){
		this.TopLength = TopLength;
		this.DownLength = DownLength;
	}
}
