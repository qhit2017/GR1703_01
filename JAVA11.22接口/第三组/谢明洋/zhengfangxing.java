package homework;

public class zhengfangxing implements Shape {
	
	private double bianchang;
	private double zhouchang;
	private double mianji;
	
	public zhengfangxing(){
		
	}
	public zhengfangxing(double bianchang){
		this.bianchang=bianchang;
	}
	
	public double getBianzhang() {
		return bianchang;
	}

	public void setBianzhang(double bianzhang) {
		this.bianchang = bianzhang;
	}

	public double getZhouchang() {
		return zhouchang;
	}

	public void setZhouchang(double zhouchang) {
		this.zhouchang = zhouchang;
	}

	public double getMianji() {
		return mianji;
	}
	public void setMianji(double mianji) {
		this.mianji = mianji;
	}

	@Override
	public void L() {
		System.out.println("边长为"+getBianzhang()+"的正方形，周长为："+getZhouchang());
		// TODO Auto-generated method stub
		
	}

	@Override
	public void S() {
		System.out.println("边长为"+getBianzhang()+"的正方形，面积为："+getMianji());
		// TODO Auto-generated method stub
		
	}

}
