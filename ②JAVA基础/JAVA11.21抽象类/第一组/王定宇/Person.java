package Homework;

public abstract class Person {
//	3、创建抽象类Person，并定义抽象方法getContent()放回字符串，额外定义say方法调用getContent（）方法并输出；
//	子类Sudent、Workder继承Person类；并实现抽象类的方法getContent；实例化对象并分别调用say（）方法 。

	private String name;
	private char    sex;
	private int    age;
	
	Person(String name,char sex,int age){
		this.name =name;
		this.sex=sex;
		this.age=age;
	}
	
	
	public String getName() {
		return name;
	}




	public void setName(String name) {
		this.name = name;
	}




	public char getSex() {
		return sex;
	}




	public void setSex(char sex) {
		this.sex = sex;
	}




	public int getAge() {
		return age;
	}




	public void setAge(int age) {
		this.age = age;
	}




	public  abstract  String getcontent();
	
		
	public void say(){
		System.out.println(getcontent());
	}
	
	
}
