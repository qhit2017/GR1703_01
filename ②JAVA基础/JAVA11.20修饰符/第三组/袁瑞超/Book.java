package com.zk.qhit.statictest;
	/*
	 * ����Java Project���̣�����������com.zk.qhit.statictest ���ڰ��д���class ��Book.java�� 
   a����Book.java�ഴ���ĸ�˽�г�Ա����������countΪstatic�� ��
   b���ڹ��췽����ʵ��countֵ�ĵ�����ͬʱ��countֵ������΢��ת�丳ֵ������no��
   c��ʵ�ֳ�Ա����name, price�ķ�װ ��
   d��Ϊno,count�ṩֻ������ ��
   e��getInfo������������鼮�Ļ�����Ϣ ��
   f����com.tsinghua���´���������TestBook.java ��
	 * 
	 * 
	 */


public class Book {
	private String bookname;
	private static int count=1;
	private int no;
	private int price;
	
	public String getBookname() {
		return bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
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
	
	public void book(){
		count++;
		no=count;
	}
	public void bookinfo(){
		System.out.println("������"+bookname+"���۸���"+price+"��ÿ���"+count+"ҳ��һ������"+no+"ҳ�ˣ�");
	}

}
