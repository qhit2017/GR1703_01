
public class MailList {

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
	
	public void info(){
		System.out.println("����:"+name+" �Ա�:"+sex+" �绰����:"+phoneNum);
	}
	
}
