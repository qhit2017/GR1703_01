package Work5;
//b.��������ʵ�ֶ�������ӿڡ�Ҫ�󹷾��е����԰�����������Ʒ�֡���ɫ�����䣨����˽�У� ��
//���������ֹ��췽����1 �޲ι��췽�� 2 ����Ϊ�����Ĺ��췽����
public class Dog implements Dongwu {

	private String name;
	private String pinzhong;
	private String color;
	private int age;
	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPinzhong() {
		return pinzhong;
	}
	public void setPinzhong(String pinzhong) {
		this.pinzhong = pinzhong;
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
	public void a(){
		
	}
	public void Name(){
		System.out.println("���֣�"+name);
	}
	@Override
	public void eat() {
		// TODO Auto-generated method stub
		System.out.println("�����");
	}
	@Override
	public void call() {
		// TODO Auto-generated method stub
		System.out.println("�����");
	}
	Dog(){
		
	}
	Dog(String name){
		
	}
	
	
	
	
	
	
}
