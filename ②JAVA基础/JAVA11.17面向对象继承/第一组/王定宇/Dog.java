package Dog;

public class Dog extends DongWu{
//	1  ����һ���ࣺ�������԰����� Ʒ�֣�ë����ɫ�� ���䣬����  �����������С��ԡ�˯��
//    Ҫ������˽�У����ṩget��set���� 
	
	private String pinzhong;
	private String color;
	private int age;
	private double zhongliang;
	
	
	
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



	public double getZhongliang() {
		return zhongliang;
	}



	public void setZhongliang(double zhongliang) {
		this.zhongliang = zhongliang;
	}



	public void dog(){
		System.out.println("����Ʒ�֣�"+pinzhong+" ë����ɫΪ"+color+" ����Ϊ"+age+" ����Ϊ"+zhongliang);
	}
	
	public void chi(){
		System.out.println("���");
	}
	
	public void jiao(){
		System.out.println("���");
	}
	
	public void shuijiao(){
		System.out.println("��˯��");
	}
	
	
	
	
	
	
}
