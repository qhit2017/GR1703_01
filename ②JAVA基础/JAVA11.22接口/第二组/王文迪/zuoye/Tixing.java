package com.wangwendi;

public class Tixing implements xiangzhuang {

	private int shangbianc;
	private int xiabianc;
	private int gao;
	private int zhouc;
	private int mianji;
	
	@Override
	public void zhouchang() {
		// TODO Auto-generated method stub
		System.out.println("Ñü³¤²»Öª");
	}

	public int getShangbianc() {
		return shangbianc;
	}

	public void setShangbianc(int shangbianc) {
		this.shangbianc = shangbianc;
	}

	public int getXiabianc() {
		return xiabianc;
	}

	public void setXiabianc(int xiabianc) {
		this.xiabianc = xiabianc;
	}

	public int getGao() {
		return gao;
	}

	public void setGao(int gao) {
		this.gao = gao;
	}

	public int getZhouc() {
		return zhouc;
	}

	public void setZhouc(int zhouc) {
		this.zhouc = zhouc;
	}

	public int getMianji() {
		return mianji;
	}

	public void setMianji(int mianji) {
		this.mianji = mianji;
	}

	@Override
	public void mianji() {
		// TODO Auto-generated method stub
		System.out.println((shangbianc+xiabianc)*gao/2);
	}
	
	public void Tixing(){
		
	}
	public void TiXing(int shangbianc,int xiabianc){
		this.shangbianc=shangbianc;
		this.xiabianc=xiabianc;
	}
	

}
