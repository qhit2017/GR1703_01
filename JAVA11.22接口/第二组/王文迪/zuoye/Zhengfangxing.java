package com.wangwendi;

public class Zhengfangxing implements xiangzhuang {

	private int bianc;
	private int zhouc;
	private int mianj;
	
	public int getBianc() {
		return bianc;
	}

	public void setBianc(int bianc) {
		this.bianc = bianc;
	}

	public int getZhouc() {
		return zhouc;
	}

	public void setZhouc(int zhouc) {
		this.zhouc = zhouc;
	}

	public int getMianj() {
		return mianj;
	}

	public void setMianj(int mianj) {
		this.mianj = mianj;
	}

	@Override
	public void zhouchang() {
		// TODO Auto-generated method stub
		System.out.println(4*bianc);
	}

	@Override
	public void mianji() {
		// TODO Auto-generated method stub
		System.out.println(bianc*bianc);
	}
	
	public void Zhengfangxing() {
	}
	public void Zhengfangxing(int bianc){
		this.bianc=bianc;
	}
	

}
