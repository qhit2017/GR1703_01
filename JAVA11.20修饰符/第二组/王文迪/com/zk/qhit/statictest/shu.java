package com.zk.qhit.statictest;

public class shu {
	
	private String name;
	private int jiage;
	private static int count;
	private final int no=count++;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getJiage() {
		return jiage;
	}
	public void setJiage(int jiage) {
		this.jiage = jiage;
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
		System.out.println("����Ϊ:"+name+";�۸�Ϊ:"+jiage+";��"+no+"��.");
	}

}
