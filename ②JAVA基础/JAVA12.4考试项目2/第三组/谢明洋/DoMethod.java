package homework;

import java.util.List;
import java.util.Scanner;

public class DoMethod implements method {

	@Override
	public void Addpeople(List<CommunicationInfor> list,Scanner input) {
		// TODO Auto-generated method stub
		System.out.println("��������Ҫ¼���ͨѶ��Ϣ���������Ա𣬵绰���롣�磺����,��,4714759");
		String str=input.next();
		String[] arr=str.split(",");
		CommunicationInfor c=new CommunicationInfor();
		char a=arr[1].charAt(0);
		long b=Integer.parseInt(arr[2]);
		c.setName(arr[0]);
		c.setSex(a);
		c.setNumber(b);
		list.add(c);
		System.out.println("¼��ɹ���");
		
	}

	@Override
	public void findAll(List<CommunicationInfor> list) {
		// TODO Auto-generated method stub
		System.out.println("��ʾ����ͨѶ¼��Ϣ");
		for(int i=0;i<list.size();i++){
			CommunicationInfor s=list.get(i);
			s.info();
		}
	}

	@Override
	public void findbyname(List<CommunicationInfor> list,Scanner input) {
		// TODO Auto-generated method stub
		System.out.println("��������Ҫ������������");
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
		System.out.println("��������Ҫ�������Ա�");
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
		System.out.println("������绰�����ѯ��");
		long number=input.nextLong();
		for(CommunicationInfor i:list){
			if(number==i.getNumber()){
				i.info();
				break;
			}
		}
		
		
	}

}
