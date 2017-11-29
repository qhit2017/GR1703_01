package zuoye21;

public class 	Student	extends	Person {
	String	HOMEWORK;
	String  ZHUANYE;
	@Override
	public void getContent() {
		// TODO Auto-generated method stub
		System.out.println("我的名字是："+getName()+",我的年龄是："+getAge()+",我有"+HOMEWORK+",我的专业是"+ZHUANYE);
	
	}


}
