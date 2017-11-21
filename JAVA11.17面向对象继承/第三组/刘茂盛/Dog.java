
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

	public void call(){
		System.out.println("汪汪汪！");
	}
	public void eat(){
		System.out.println("喜欢啃骨头！");
	}
	public void sleep(){
		System.out.println("喜欢睡觉！");
	}


}
