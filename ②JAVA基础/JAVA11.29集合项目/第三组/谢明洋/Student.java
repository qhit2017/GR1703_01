package 课堂练习;

public class Student {
	
	private String name;
	private int age;
	private char sex;
	private String address;
	
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
	public char getSex() {
		return sex;
	}
	public void setSex(char sex) {
		this.sex = sex;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void info(){
		System.out.println("学生姓名："+getName());
		System.out.println("学生性别："+getSex());
		System.out.println("学生年龄："+getAge());
		System.out.println("学生住址："+getAddress());
	}
	
	
	
	

}
