package Work;


public class Student {
	private String name;
	private int    age;
	private char   sex;
	private String  address;
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
	
	public  void  info(){
		System.out.println("学生姓名"+name);
		System.out.println("年龄"+age);
		System.out.println("性别"+sex);
		System.out.println("地址"+address);
	}
	

}
