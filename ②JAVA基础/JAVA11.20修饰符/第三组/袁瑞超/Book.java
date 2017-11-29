package com.zk.qhit.statictest;
	/*
	 * 创建Java Project工程，并创建包名com.zk.qhit.statictest ，在包中创建class 类Book.java。 
   a、给Book.java类创建四个私有成员变量；其中count为static的 。
   b、在构造方法中实现count值的递增，同时将count值进行稍微的转变赋值给变量no。
   c、实现成员变量name, price的封装 。
   d、为no,count提供只读操作 。
   e、getInfo（）方法输出书籍的基本信息 。
   f、在com.tsinghua包下创建测试类TestBook.java 。
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
		System.out.println("书名是"+bookname+"，价格是"+price+"，每天读"+count+"页，一共读了"+no+"页了！");
	}

}
