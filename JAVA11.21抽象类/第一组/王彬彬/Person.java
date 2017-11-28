
public abstract class Person {
	
	// 创建抽象类Person，并定义抽象方法getContent()放回字符串，
	 //  	额外定义say方法调用getContent（）方法并输出；
	//	子类Sudent、Workder继承Person类；
	//	并实现抽象类的方法getContent；实例化对象并分别调用say（）方法 。
	
	private String name;
	private int age;
	private int weight;
	private String content;
	
	Person(String name, int age,String content){
		this.name=name;
		this.age=age;
		this.content=content;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public abstract String getContent();
	
	public void say(){
		getContent();
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	
	
	
}
