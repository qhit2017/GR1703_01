
public class Dog extends Animal{
	/*
	 * 1  ����һ���ࣺ�������԰����� Ʒ�֣�ë����ɫ�� ���䣬����  �����������С��ԡ�˯��
    	Ҫ������˽�У����ṩget��set���� 
	 */
	
	private String kind;
	private String color;
	private int age;
	private double weight;
		
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
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
	public void info(){
		
	}
	
	public void shout(){
		
	}
	public void eat(){
		System.out.println("��ϲ�����⣡");
	}
	public void sleep(){
		
	}

}
