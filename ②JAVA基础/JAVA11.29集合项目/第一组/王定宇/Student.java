package lx;

public class Student {

	private String name;
	private char sex;
	private int age;
	private String address;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public void inof(){
		System.out.println("我叫"+name+",今年"+age+",岁"+"我是"+sex+"生，家住"+address);
	}
	
}
