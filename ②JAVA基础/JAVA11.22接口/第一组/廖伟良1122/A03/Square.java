package A03;

public class Square implements Shape{

	@Override
	public void girth() {
		// TODO Auto-generated method stub
		System.out.println("正方形周长是:"+girth);
	}

	@Override
	public void acreage() {
		// TODO Auto-generated method stub
		System.out.println("正方形面积是:"+acreage);
	}
	private double girth;
	private double acreage;
	private double length;
	
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

	public double getLength() {
		return length;
	}

	public void setLength(double length) {
		this.length = length;
	}

	Square() {
	}
	
	 Square(double length){
		this.length = length;
	}
}