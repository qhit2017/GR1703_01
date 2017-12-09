package Day2;

public class ThingsInfo {
	private String num;
	private  String name;
	private double price;
	private int count;
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
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
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public void info(){
		System.out.println("商品编号："+getNum());
		System.out.println("商品名称："+getName());
		System.out.println("商品价格："+getPrice()+"元");
		System.out.println("商品数量："+getCount());
	}
	public void come(){
		System.out.println("商品名："+getName());
		System.out.println("进货量："+getCount());
	}
	public void out(){
		System.out.println("商品名："+getName());
		System.out.println("出货量："+getCount());
	}

}
