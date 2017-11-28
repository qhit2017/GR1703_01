package Homework5;
//b.创建狗，实现动物这个接口。要求狗具有的属性包括：姓名、品种、颜色、年龄（属性私有） 
//，并创建两种构造方法（1 无参构造方法 2 参数为姓名的构造方法）
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
		System.out.println("吃骨头");
		
	}

	
	public void call() {
	System.out.println("汪汪叫");
		
	}
	

}
