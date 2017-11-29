
public class Dog extends Animal{
	/*
	 * 1  定义一个类：狗，属性包括： 品种，毛的颜色， 年龄，重量  方法包括：叫、吃、睡觉
    	要求属性私有，并提供get、set方法 
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
		System.out.println("它喜欢吃肉！");
	}
	public void sleep(){
		
	}

}
