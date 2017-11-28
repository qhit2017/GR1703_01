package com.xingwenzhe;

public class zhengfangxing implements shape{
	
	private int bianchang;
	
	private int zhouchang;
	
	private int mianji;
	
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

	public int getMianji() {
		return mianji;
	}

	public void setMianji(int mianji) {
		this.mianji = mianji;
	}

	@Override
	public void perimeter() {
		// TODO Auto-generated method stub
		System.out.println("正方形的周长是"+getZhouchang());
	}

	@Override
	public void acreage() {
		// TODO Auto-generated method stub
	   
		System.out.println("正方形的面积是"+getMianji());
	}
   
  
   
}
