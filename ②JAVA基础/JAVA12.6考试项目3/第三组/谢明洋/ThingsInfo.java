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
		System.out.println("��Ʒ��ţ�"+getNum());
		System.out.println("��Ʒ���ƣ�"+getName());
		System.out.println("��Ʒ�۸�"+getPrice()+"Ԫ");
		System.out.println("��Ʒ������"+getCount());
	}
	public void come(){
		System.out.println("��Ʒ����"+getName());
		System.out.println("��������"+getCount());
	}
	public void out(){
		System.out.println("��Ʒ����"+getName());
		System.out.println("��������"+getCount());
	}

}
