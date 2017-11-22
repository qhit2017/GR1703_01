package comzkqhitstatictest;

public class Book {
	
	private String name;
	private double price;
	private static int count;
	private int no;
	
	public  Book(int count){
		this.count=count;
		count++;
		no=count;
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
	public static int getCount() {
		return count;
	}
	
	public int getNo() {
		return no;
	}
	public void getinfo(){
		System.out.println("我买了一本"+name+"它的价格是："+price+"，我读了"+no+"页。");
	}
	
	
	
	

}
