package day28;

public class student {
	private String name;
	private  int age;
	private char sex;
	private String  adress;
	
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

	public String getAdress() {
		return adress;
	}

	public void setAdress(String adress) {
		this.adress = adress;
	}

	public void sofi(){
		System.out.println("我是"+name+",我的年龄"+age+",性别"+sex+",地址"+adress);
	}
	
	
}
