package today126;

public class shangpin {
//商品编号、名称、价格、数量
	private  String bianhao;
	private  String name;
	private double	money;
	private int number;
	public String getBianhao() {
		return bianhao;
	}
	public void setBianhao(String bianhao) {
		this.bianhao = bianhao;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
		public void info(){
			System.out.println("商品名字："+name+"商品编号："+bianhao+",商品价钱："+money+",商品数量："+number);
		}
		

}
