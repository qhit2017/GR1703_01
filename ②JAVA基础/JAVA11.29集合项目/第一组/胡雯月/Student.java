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
		System.out.println("ѧ������"+name);
		System.out.println("����"+age);
		System.out.println("�Ա�"+sex);
		System.out.println("��ַ"+address);
	}
	

}
