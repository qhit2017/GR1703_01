package Homework5;
/*
 * c.�������� ʵ�ֶ�������ӿڡ�Ҫ��������е����԰�����������Ʒ�֡������ȡ����أ�����˽�У� ��
 * ���������ֹ��췽����1 �޲ι��췽�� 2 ����Ϊ������Ʒ�ֵĹ��췽����
 */
public class Mouse implements Animal{

	private String name;
	private String variety;
	private int legNumber;
	private int weight;
	
	Mouse(){
		
	}
	Mouse(String name,String variety, int legNumber,int weight){
		
	}
	
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getVariety() {
		return variety;
	}

	public void setVariety(String variety) {
		this.variety = variety;
	}

	public int getLegNumber() {
		return legNumber;
	}

	public void setLegNumber(int legNumber) {
		this.legNumber = legNumber;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	@Override
	public void eat() {
		System.out.println("�Դ���");
		
	}

	@Override
	public void call() {
		System.out.println("֨֨֨");
		
	}

	
	
}
