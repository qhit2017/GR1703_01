package Homework5;
//b.��������ʵ�ֶ�������ӿڡ�Ҫ�󹷾��е����԰�����������Ʒ�֡���ɫ�����䣨����˽�У� 
//�����������ֹ��췽����1 �޲ι��췽�� 2 ����Ϊ�����Ĺ��췽����
public class Dog implements Animal{


	private String name;
	private String variety;
	private String color;
	private int age;
	
	Dog(){
		
	}
	Dog(String name,String variety,String color,int age){
		
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
	public void eat() {
		System.out.println("�Թ�ͷ");
		
	}

	
	public void call() {
	System.out.println("������");
		
	}
	

}
