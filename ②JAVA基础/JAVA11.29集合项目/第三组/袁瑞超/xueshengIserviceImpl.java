
public class xueshengIserviceImpl implements  xueshengIservice{

	@Override
	public void tianjia() {
		// TODO Auto-generated method stub
		System.out.println("����ѧ��,���磺����������,�Ա���,���꣺18����,���ԣ��ܿ�");
		String  Str =Sc.next();
		String [] arr=Str.split("��");
	xuesheng  s=new xuesheng(); 
		s.setName(arr[0]);
		s.setSex(arr[1]);
		s.setAge(Integer.parseInt(arr[2]));
		s.setDizhi(arr[3]);
		s.info();
		System.out.println("��ӳɹ���");
	
	
	}

}
