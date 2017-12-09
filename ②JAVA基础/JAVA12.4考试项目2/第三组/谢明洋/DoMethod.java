package homework;

import java.util.List;
import java.util.Scanner;

public class DoMethod implements method {

	@Override
	public void Addpeople(List<CommunicationInfor> list,Scanner input) {
		// TODO Auto-generated method stub
		System.out.println("请输入需要录入的通讯信息：姓名，性别，电话号码。如：张三,男,4714759");
		String str=input.next();
		String[] arr=str.split(",");
		CommunicationInfor c=new CommunicationInfor();
		char a=arr[1].charAt(0);
		long b=Integer.parseInt(arr[2]);
		c.setName(arr[0]);
		c.setSex(a);
		c.setNumber(b);
		list.add(c);
		System.out.println("录入成功！");
		
	}

	@Override
	public void findAll(List<CommunicationInfor> list) {
		// TODO Auto-generated method stub
		System.out.println("显示所有通讯录信息");
		for(int i=0;i<list.size();i++){
			CommunicationInfor s=list.get(i);
			s.info();
		}
	}

	@Override
	public void findbyname(List<CommunicationInfor> list,Scanner input) {
		// TODO Auto-generated method stub
		System.out.println("请输入需要搜索的姓名：");
		String name=input.next();
		for(int i=0;i<list.size();i++){
			CommunicationInfor s=list.get(i);
			if(name.equals(s.getName())){
				s.info();
			}
		}
		
	}

	@Override
	public void findbysex(List<CommunicationInfor> list,Scanner input) {
		// TODO Auto-generated method stub
		System.out.println("请输入需要搜索的性别：");
		String sex=input.next();
		char c=sex.charAt(0);
		for(CommunicationInfor i:list){
			if(c==i.getSex()){
				i.info();
				break;
			}
		}
		
		
	}

	@Override
	public void findbynumber(List<CommunicationInfor> list,Scanner input) {
		// TODO Auto-generated method stub
		System.out.println("请输入电话号码查询！");
		long number=input.nextLong();
		for(CommunicationInfor i:list){
			if(number==i.getNumber()){
				i.info();
				break;
			}
		}
		
		
	}

}
