
public class Dog extends Animal{
	/*
	 *  ����һ���ࣺ�������԰����� Ʒ�֣�ë����ɫ�� ���䣬����  �����������С��ԡ�˯��
    Ҫ������˽�У����ṩget��set���� 
	 */
	private String variety;
	private String color;
	private int age;
	private double weight;
	
	public String getVariety() {
		return variety;
	}

	public void setVariety(String variety) {
		this.variety = variety;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public double getWeight() {
		return weight;
	}

	public void setWeight(double weight) {
		this.weight = weight;
	}

	public void call(){
		System.out.println("��������");
	}
	public void eat(){
		System.out.println("ϲ���й�ͷ��");
	}
	public void sleep(){
		System.out.println("ϲ��˯����");
	}


}
