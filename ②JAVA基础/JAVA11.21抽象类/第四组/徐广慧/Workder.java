package zuoye21;

public class Workder	extends Person {
	long	gongzi;

	@Override
	public void getContent() {
		// TODO Auto-generated method stub
		System.out.println("我的名字是："+getName()+",我的年龄是："+getAge()+",我的工资是："+gongzi);
	}
	
}
