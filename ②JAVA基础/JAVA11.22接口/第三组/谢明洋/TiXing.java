package homework;

public class TiXing implements Shape{
	
	private double upl;
	private double downl;
	private double h;
	private double zhouchang;
	private double mianji;
	
	public TiXing(){
		
	}
	
	public TiXing(double upl,double downl){
		this.upl=upl;
		this.downl=downl;
		
	}
	

	public double getUpl() {
		return upl;
	}

	public void setUpl(double upl) {
		this.upl = upl;
	}

	public double getDownl() {
		return downl;
	}

	public void setDownl(double downl) {
		this.downl = downl;
	}

	public double getH() {
		return h;
	}

	public void setH(double h) {
		this.h = h;
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
		System.out.println("上边为"+getUpl()+"下边为"+getDownl()+"的梯形，周长为"+getZhouchang());
		// TODO Auto-generated method stub
		
	}

	@Override
	public void S() {
		System.out.println("上边为"+getUpl()+"下边为"+getDownl()+"的梯形，面积为"+getMianji());
		// TODO Auto-generated method stub
		
	}

}
