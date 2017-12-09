package zuoye124;

public class information {

	private String name;
	private char sex;
	private String phone;
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public void info(){
		System.out.println("名字："+getName()+",性别："+getSex()+",手机号："+getPhone());
	}
}
