package o3;

public class workder extends person{
	private String xueming;
	public String getXueming() {
		return xueming;
	}

	public void setXueming(String xueming) {
		this.xueming = xueming;
	}

	public void say(){
		System.out.println("…œ ≤√¥—ß"+xueming);
	}

	public workder(String name, int age) {
		super(name, age);
		// TODO Auto-generated constructor stub
	}

}
