package Work4;

public class Zhengfangxing implements XingZhuang {
	//b.创建正方形，实现形状这个接口。要求正方形具有的属性包括：边长、周长、面积（属性私有） ，
	//并创建两种构造方法（1 无参构造方法 2 参数为边长的构造方法）
	
	private int bianchang;
	private int zouchang;
	private int mianji;
	public int getBianchang() {
		return bianchang;
	}
	public void setBianchang(int bianchang) {
		this.bianchang = bianchang;
	}
	public int getZouchang() {
		return zouchang;
	}
	public void setZouchang(int zouchang) {
		this.zouchang = zouchang;
	}
	public int getMianji() {
		return mianji;
	}
	public void setMianji(int mianji) {
		this.mianji = mianji;
	}
	
	
	public void zouchang(){
		
	}
	public void chang(){
		System.out.println(bianchang);
	}
	@Override
	public void Zouchang() {
		// TODO Auto-generated method stub
		System.out.println("正方形的周长是："+zouchang);
	}
	@Override
	public void Mianji() {
		// TODO Auto-generated method stub
		System.out.println("正方形的面积三："+mianji);
	}
	
	Zhengfangxing(int bianchang){
		
	}
	
	Zhengfangxing(){
		
	}
	
	
}
