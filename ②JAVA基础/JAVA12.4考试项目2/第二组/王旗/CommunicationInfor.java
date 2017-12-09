package homework;

public class CommunicationInfor {
	private String name;
	private char sex;
	private long number;
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
	public long getNumber() {
		return number;
	}
	public void setNumber(long number) {
		this.number = number;
	}
	public void info(){
		System.out.println("姓名："+getName());
		System.out.println("性别："+getSex());
		System.out.println("电话："+getNumber());
	}

}
