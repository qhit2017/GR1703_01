package WORK;

public class Workder extends Person{
	
	String major;
	
	String where;

	@Override
	public void getContent() {
		System.out.println("我的名字:"+getName()+",年龄:"+getAge()+",性别:"+getSex()+
				"，住址:"+getAddress()+"，职业："+major+"，工作地："+where);
		// TODO Auto-generated method stub
		
	}

}
