package Work4;

public class Tixing implements XingZhuang {

	//c.创建梯形，实现形状这个接口。要求梯形具有的属性包括：上边上、下边长、高、周长、面积（属性私有） ，
	//并创建两种构造方法（1 无参构造方法 2 参数为上边长、下边长的构造方法）
	
	private int shangbian;
	private int xiabian;
	private int gao;
	private int zhouchang;
	private int mianji;
	
	
	
	public int getShangbian() {
		return shangbian;
	}

	public void setShangbian(int shangbian) {
		this.shangbian = shangbian;
	}

	public int getXiabian() {
		return xiabian;
	}

	public void setXiabian(int xiabian) {
		this.xiabian = xiabian;
	}

	public int getGao() {
		return gao;
	}

	public void setGao(int gao) {
		this.gao = gao;
	}

	public int getZhouchang() {
		return zhouchang;
	}

	public void setZhouchang(int zhouchang) {
		this.zhouchang = zhouchang;
	}

	public int getMianji() {
		return mianji;
	}

	public void setMianji(int mianji) {
		this.mianji = mianji;
	}

	public void wuchan(){
		
	}
	
	public void shangbianchang(){
		System.out.println(shangbian+xiabian);
	}

	@Override
	public void Zouchang() {
		// TODO Auto-generated method stub
		System.out.println("梯形的周长是："+zhouchang);
	}

	@Override
	public void Mianji() {
		// TODO Auto-generated method stub
		System.out.println("梯形的面积是："+mianji);
	}
	
	Tixing(){
		
	}
	Tixing(int shangbian,int xiabian){
		
	}
	
	
	
	
	
	
	
}
