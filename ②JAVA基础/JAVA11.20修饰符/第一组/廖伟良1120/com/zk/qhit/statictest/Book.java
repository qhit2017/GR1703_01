package com.zk.qhit.statictest;

public class Book {
	private String name;
	private double price;
	private String no;
	private	static int count = 0;
	public Book(){
		count++;
		no = "TP00"+count;
	}
	public Book(String name,double price) {
		count++;
		no = "TP00"+count;
		this.name = name;
		this.price = price;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getNo() {
		return no;
	}
	public static int getCount() {
		return count;
	}
	public void getInfo(){System.out.println("���:"+this.getNo()+"��"+this.getName()+"��,ͼ��ݹ��в���:"+Book.getCount());
	}
}