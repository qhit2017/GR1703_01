package com.xingwenzhe;

public class echelon implements shape{
	
	private  int shangbianchang;
	
	private int xiabianchang;
	
	private int height;
	
    private int perimeter;
    
    private int acreage;
    
    

	public int getShangbianchang() {
		return shangbianchang;
	}


	public void setShangbianchang(int shangbianchang) {
		this.shangbianchang = shangbianchang;
	}


	public int getXiabianchang() {
		return xiabianchang;
	}


	public void setXiabianchang(int xiabianchang) {
		this.xiabianchang = xiabianchang;
	}


	public int getHeight() {
		return height;
	}


	public void setHeight(int height) {
		this.height = height;
	}


	public int getPerimeter() {
		return perimeter;
	}


	public void setPerimeter(int perimeter) {
		this.perimeter = perimeter;
	}


	public int getAcreage() {
		return acreage;
	}


	public void setAcreage(int acreage) {
		this.acreage = acreage;
	}


	@Override
	public void perimeter() {
		// TODO Auto-generated method stub
		System.out.println("梯形的周长"+getPerimeter());
	}


	@Override
	public void acreage() {
		// TODO Auto-generated method stub
		System.out.println("梯形的面积"+getAcreage());
	}
	 public void echelon(){
	 
	 }
	 
	 public void echelon(int shangbianchang,int xiabianchang){
		 this. shangbianchang=shangbianchang;
		 this.xiabianchang=xiabianchang;
	 }
	 

}
    
    	
    