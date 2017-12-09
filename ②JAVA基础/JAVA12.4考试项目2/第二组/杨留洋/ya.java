package shier;

public class ya {
		
	private String name;
	private char sex;
	private String dh;
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
	public String getDh() {
		return dh;
	}
	public void setDh(String dh) {
		this.dh = dh;
	}
	public void info(){
		System.out.println("我的名字"+name+"性别是"+sex+"电话号是"+dh);
	}
}
