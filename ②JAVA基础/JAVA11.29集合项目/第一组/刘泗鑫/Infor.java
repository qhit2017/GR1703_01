
public class Infor {
	
	private String name;
	private char sex;
	private int age;
	private String zhuzhi;
	
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
	public String getZhuzhi() {
		return zhuzhi;
	}
	public void setZhuzhi(String zhuzhi) {
		this.zhuzhi = zhuzhi;
	}

	public void info(){
		System.out.println("姓名："+name+"，性别："+sex+"，年龄："+age+"岁。"+"住址："+zhuzhi);
	}

	
}
