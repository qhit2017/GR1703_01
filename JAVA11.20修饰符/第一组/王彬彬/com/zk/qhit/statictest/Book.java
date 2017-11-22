package com.zk.qhit.statictest;
//创建Java Project工程，并创建包名com.zk.qhit.statictest ，在包中创建class 类Book.java。 
//a、给Book.java类创建四个私有成员变量；其中count为static的 。
//b、在构造方法中实现count值的递增，同时将count值进行稍微的转变赋值给变量no。
//c、实现成员变量name, price的封装 。
//d、为no,count提供只读操作 。
//e、getInfo（）方法输出书籍的基本信息 。
//f、在com.tsinghua包下创建测试类TestBook.java
//。
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
		System.out.println("书名叫："+name+",价格是："+price+",有"+count+"本,是关于"+variety+"的书");
	}
}
