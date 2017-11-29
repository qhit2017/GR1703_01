package com.lijiakang;

public class BOOK {
	private	 String name;
	private String price;
	private final char no='否';
	private final int count=100;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public char getNo() {
		return no;
	}
	
	public int getCount() {
		return count;
	}
	public void getInfo(){
		System.out.println("书名"+name+"价格"+price+no+count);
	}
}
