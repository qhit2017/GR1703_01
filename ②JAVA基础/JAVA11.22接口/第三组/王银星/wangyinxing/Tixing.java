package com.wangyinxing;

public class Tixing implements shape{
private  int	shangbian;
private  int xianbian;
private  int gao;
private  int zhouchang;
private  int mainji;
	public void tixing(){
		
	}public void tixing(int shangbian,int xiabian){
		this.shangbian=shangbian;
		this.xianbian=xiabian;
	}
	
	public int getShangbian() {
	return shangbian;
}

public void setShangbian(int shangbian) {
	this.shangbian = shangbian;
}

public int getXianbian() {
	return xianbian;
}

public void setXianbian(int xianbian) {
	this.xianbian = xianbian;
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

public int getMainji() {
	return mainji;
}

public void setMainji(int mainji) {
	this.mainji = mainji;
}

	@Override
	public void zhouchang() {
		// TODO Auto-generated method stub
		System.out.println("梯形的周长="+getZhouchang());
	}

	@Override
	public void mianji() {
		// TODO Auto-generated method stub
		System.out.println("梯形的面积="+getMainji());
	}
	

}
