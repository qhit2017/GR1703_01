package com.zueye;

public class tixing implements xingzhuang{
	private int shangbian;
	private int xiabian;
	private int gao;
	private int zhouchang;
	private int mianji;
	
	public void tixing(){
		
	}
	public void tixing(int shangbian,int xiabian){
		this.shangbian=shangbian;
		this.xiabian=xiabian;
		
	}
	@Override
	public void zhouchang() {
		// TODO Auto-generated method stub
		System.out.println("梯形的上边长"+getShangbian()+",下边长"+getXiabian()
				+",高"+getGao()+",周长"+getZhouchang());
	}

	@Override
	public void mianji() {
		// TODO Auto-generated method stub
		System.out.println("梯形的上边长"+getShangbian()+",下边长"+getXiabian()
				+",高"+getGao()+",梯形的面积"+getMianji());
	}
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
	

}
