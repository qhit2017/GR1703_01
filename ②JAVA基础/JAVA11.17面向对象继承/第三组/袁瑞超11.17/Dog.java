
public class Dog extends Animal{
	/*
	 *  定义一个类：狗，属性包括： 品种，毛的颜色， 年龄，重量  方法包括：叫、吃、睡觉
    要求属性私有，并提供get、set方法 
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

	public void live(){
		System.out.println("它是"+getVariety()+"犬"+"，它是"+getColor()+"，它"+getAge()+"岁了，它有"+getWeight()+"公斤！"+"它喜欢汪汪汪！喜欢吃骨头！喜欢睡觉！");
	}
	

}
