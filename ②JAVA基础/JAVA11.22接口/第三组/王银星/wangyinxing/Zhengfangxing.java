package com.wangyinxing;

public class Zhengfangxing implements shape{
private int bianchang;
private int zhouchang;
private int mainji;
public void zhengfangxing(){
	
}
public void zhengfangxing(int bianchang){
	this.bianchang=bianchang;
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

public int getMainji() {
	return mainji;
}

public void setMainji(int mainji) {
	this.mainji = mainji;
}

	@Override
	public void zhouchang() {
		// TODO Auto-generated method stub
		System.out.println("正方形的周长="+getZhouchang());
	}

	@Override
	public void mianji() {
		// TODO Auto-generated method stub
		System.out.println("正方形的面积="+getMainji());
	}
	

}
