package myproject;

public class Shop {
	
	private String   number;
	private String name;
	private double    price;
	private int   quantity;
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
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
	public void setPrice(Double price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	public void  info(){
		System.out.println("��Ʒ���"+number+",��Ʒ����"+name+",��Ʒ�۸�"+price+",��Ʒ����"+quantity);
	

}
}
