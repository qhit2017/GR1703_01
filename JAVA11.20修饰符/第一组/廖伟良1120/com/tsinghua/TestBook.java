package com.zk.qhit.statictest;

public class TestBook {
	public static void main(String[] args) {
	Book b1 = new Book();
	b1.setName("δ��ս��");
	b1.setPrice(34.5);
	b1.getInfo();
	
	Book b2 = new Book("��ë���˼�",23);
	b2.getInfo();
	}
}
