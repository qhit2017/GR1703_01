package today126;

public class shangpin {
//��Ʒ��š����ơ��۸�����
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
			System.out.println("��Ʒ���֣�"+name+"��Ʒ��ţ�"+bianhao+",��Ʒ��Ǯ��"+money+",��Ʒ������"+number);
		}
		

}
