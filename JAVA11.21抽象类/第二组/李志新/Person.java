package Home_work;

public abstract class Person {

	private String name;
	private int age;
	
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
	public abstract String getContent();
	
	public void say(){
		System.out.println(getContent());
	}
	Person(String name,int age){
		this.age=age;
		this.name=name;
	}
	
}
