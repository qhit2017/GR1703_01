
public class xueshengIserviceImpl implements  xueshengIservice{

	@Override
	public void tianjia() {
		// TODO Auto-generated method stub
		System.out.println("增加学生,例如：姓名：张三,性别：男,今年：18岁了,来自：周口");
		String  Str =Sc.next();
		String [] arr=Str.split("，");
	xuesheng  s=new xuesheng(); 
		s.setName(arr[0]);
		s.setSex(arr[1]);
		s.setAge(Integer.parseInt(arr[2]));
		s.setDizhi(arr[3]);
		s.info();
		System.out.println("添加成功！");
	
	
	}

}
