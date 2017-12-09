package testday;

public class student {

	private String name;
	private char  sex;
	private int age;
	private int zhuzi;
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
	public int getZhuzi() {
		return zhuzi;
	}
	public void setZhuzi(int zhuzi) {
		this.zhuzi = zhuzi;
	}
	 
	public void inof() {
		System.out.println("我是"+name+"性别"+sex+"年龄"+age+"住址"+zhuzi);
	}
}
