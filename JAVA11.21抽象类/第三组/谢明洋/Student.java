package WORK;

public class Student extends Person {
	
	String major;
	String SchoolName;

	@Override
	public void getContent() {
		System.out.println("我的名字:"+getName()+",年龄:"+getAge()+",性别:"+getSex()+
							"，住址:"+getAddress()+",专业："+major+",学校："+SchoolName);
		// TODO Auto-generated method stub		
	}
	
	
	
	
	
	

}
