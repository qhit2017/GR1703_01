package practic;

public class infor {

	private String name;
	private char sex;
	private String phoneNum;
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
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	
	public void information(){
		System.out.println("我叫"+ name +",性别是"+ sex +",电话号码是"+ phoneNum);
	}
	
}
