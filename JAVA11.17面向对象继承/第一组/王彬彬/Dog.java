
public class Dog extends Animals {

	private  String variety;
	private String color;
	private int age;
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}

	private  int weight;
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
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	
	public void bark(){
		System.out.println("������Ʒ���ǣ�"+variety+"��ë����ɫ�ǣ�"+color+",����"+age+"����"+"�����ǣ�"+weight);
	}
	
	public void eat(){
		System.out.println("������Ʒ���ǣ�"+variety+"��ë����ɫ�ǣ�"+color+",����"+age+"����"+"�����ǣ�"+weight);
	}
	
	public void sleep(){
		System.out.println("������Ʒ���ǣ�"+variety+"��ë����ɫ�ǣ�"+color+",����"+age+"����"+"�����ǣ�"+weight);
	}
	
	
	
}
