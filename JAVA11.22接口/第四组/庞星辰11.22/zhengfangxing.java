package com.zuoye;

public class zhengfangxing implements xingzhaung{

	int bianchang;
	
	
	
	zhengfangxing(){
		
	}
	
	zhengfangxing(int bianchang){
		this.bianchang=bianchang;
	}
	
	
	
	@Override
	public void zouchang() {
		// TODO Auto-generated method stub
		System.out.println("正方形周长："+(bianchang+bianchang+bianchang+bianchang));
	}

	@Override
	public void mianji() {
		// TODO Auto-generated method stub
		System.out.println("正方形面积："+bianchang*bianchang);
	}

}
