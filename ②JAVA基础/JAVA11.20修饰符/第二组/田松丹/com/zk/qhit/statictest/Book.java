package com.zk.qhit.statictest;

public class Book {
	
	/*2������Java Project���̣�����������com.zk.qhit.statictest ���ڰ��д���class ��Book.java�� 
   a����Book.java�ഴ���ĸ�˽�г�Ա����������countΪstatic�� ��
   b���ڹ��췽����ʵ��countֵ�ĵ�����ͬʱ��countֵ������΢��ת�丳ֵ������no��
   c��ʵ�ֳ�Ա����name, price�ķ�װ ��
   d��Ϊno,count�ṩֻ������ ��
   e��getInfo������������鼮�Ļ�����Ϣ ��
   f����com.tsinghua���´���������TestBook.java 
	 * 
	 */

	private String name;
	private int price;   
	private static int count;
	private final int no = count++;
	
	
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
	
	public void count(){
		System.out.println(count++);
	}
	
	public void getinfo(){
		System.out.println("�ҵ������ǣ�"+name+"���۸��ǣ�"+price+"��"+count+"ҳ��");
	}
}
