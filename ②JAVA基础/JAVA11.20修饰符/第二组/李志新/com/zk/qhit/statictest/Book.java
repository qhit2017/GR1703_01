package com.zk.qhit.statictest;

public class Book {
	
	private String name;
	private int price;//�۸�
	private static int count;
	private final int no=count++;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public static int getCount() {
		return count;
	}
	public static void setCount(int count) {
		Book.count = count;
	}
	public int getNo() {
		return no;
	}
	
	public void Info() {
		System.out.println("����Ϊ:"+name+";�۸�Ϊ:"+price+";��"+no+"��.");
	}

}
