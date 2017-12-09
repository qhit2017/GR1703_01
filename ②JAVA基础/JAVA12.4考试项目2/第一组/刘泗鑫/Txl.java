
public class Txl {
	
	private String name;
	private char sex;
	private String nember;
	
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
	public String getNember() {
		return nember;
	}
	public void setNember(String nember) {
		this.nember = nember;
	}
	
	public void info(){
		System.out.println("姓名："+name+",性别："+sex+",电话："+nember);
	}

}
