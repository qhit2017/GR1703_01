package com.xingwenzhe;

public class Textshape {
	
	public static void main(String[] args) {
		
		zhengfangxing z=new zhengfangxing();
		z.setBianchang(10);
	    z.setZhouchang(12);
	    z.setMianji(30);
	    z.perimeter();
	    z.acreage();
	    
	    echelon e=new echelon();
	    e.setShangbianchang(6);
	    e.setXiabianchang(6);
	    e.setHeight(10);
	    e.setPerimeter(15);
	    e.setAcreage(30);
	    e.acreage();
	    e.perimeter();
	}

}
