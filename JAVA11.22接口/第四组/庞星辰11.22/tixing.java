package com.zuoye;

public class tixing implements xingzhaung{

	int shangbianchang;
	int xiabianchang;
	int gao;
	
	
	tixing(){
		
	}
	 tixing(int shangbianchang,int xiabianchang){
		this.shangbianchang=shangbianchang;
		this.xiabianchang=xiabianchang;
	}
	
	
	@Override
	public void zouchang() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mianji() {
		// TODO Auto-generated method stub
		System.out.println("梯形的面积："+(shangbianchang+xiabianchang)*gao/2);
	}

}
