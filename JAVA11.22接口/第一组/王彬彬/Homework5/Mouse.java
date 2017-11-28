package Homework5;
/*
 * c.创建老鼠 实现动物这个接口。要求老鼠具有的属性包括：姓名、品种、几条腿、体重（属性私有） ，
 * 并创建两种构造方法（1 无参构造方法 2 参数为姓名、品种的构造方法）
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
		System.out.println("吃大米");
		
	}

	@Override
	public void call() {
		System.out.println("吱吱吱");
		
	}

	
	
}
