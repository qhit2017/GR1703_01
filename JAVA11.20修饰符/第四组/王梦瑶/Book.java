package com.zk.qhit.statictest;

public class Book {
	private String no;
	private String name;
	private double price;
	
	private static  int count=0;
	public Book(){
		count++;
		no=count+"TPOO";
	}
	public Book(String name,double price){
		count++;
		no=count+"TPOO";
		this.name=name;
		this.price=price;
	}
	
	public  void info(){
		System.out.println("�ҵ�������"+name+"����Ϊ"+count+"��ǮΪ"+price);
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
	public void setPrice(int price) {
		this.price = price;
	}
	public static int getcout(){
		return count;
	}
	public String getno(){
		return no;
	}
	public void gerinfo(){
		System.out.println("���"+this.getno()+"��"+this.getName()+"����ͼ��ݲ���"+
	Book.getcout());
	}

}
