package com.zueye;

public class zhengfangxin implements xingzhuang{
	private int bianchang;
	private int zhouchang;
	private int mianji;
	public void zhengfangxin(){
		
	}
	public void zhengfangxin(int bianchang){
		this.bianchang=bianchang;
	}
	@Override
	public void zhouchang() {
		// TODO Auto-generated method stub
		System.out.println("�����εı߳�"+getBianchang()+"���ܳ�Ϊ"+getZhouchang());
	}

	@Override
	public void mianji() {
		// TODO Auto-generated method stub
		System.out.println("�����εı߳�"+getBianchang()+",�����ε����"+getMianji());
	}
	public int getBianchang() {
		return bianchang;
	}
	public void setBianchang(int bianchang) {
		this.bianchang = bianchang;
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
