package com.zk.qhit.statictest;
//����Java Project���̣�����������com.zk.qhit.statictest ���ڰ��д���class ��Book.java�� 
//a����Book.java�ഴ���ĸ�˽�г�Ա����������countΪstatic�� ��
//b���ڹ��췽����ʵ��countֵ�ĵ�����ͬʱ��countֵ������΢��ת�丳ֵ������no��
//c��ʵ�ֳ�Ա����name, price�ķ�װ ��
//d��Ϊno,count�ṩֻ������ ��
//e��getInfo������������鼮�Ļ�����Ϣ ��
//f����com.tsinghua���´���������TestBook.java
//��
public class Book {
	
	private String name;
	private int price;
	private static int count=10;
	private String variety;
	private  int no=count++;
	
	public Book(){
		count++;
	}
	
	
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
 
	public int getNo() {
		return no;
	}
	
	public String getVariety() {
		return variety;
	}
	public void setVariety(String variety) {
		this.variety = variety;
	}
	
	public void getifo(){
		System.out.println("�����У�"+name+",�۸��ǣ�"+price+",��"+count+"��,�ǹ���"+variety+"����");
	}
}
