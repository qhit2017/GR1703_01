package WORK;

public class Student extends Person {
	
	String major;
	String SchoolName;

	@Override
	public void getContent() {
		System.out.println("�ҵ�����:"+getName()+",����:"+getAge()+",�Ա�:"+getSex()+
							"��סַ:"+getAddress()+",רҵ��"+major+",ѧУ��"+SchoolName);
		// TODO Auto-generated method stub		
	}
	
	
	
	
	
	

}
