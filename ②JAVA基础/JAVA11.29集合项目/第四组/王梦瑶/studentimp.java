package day28;

import java.util.List;
import java.util.Scanner;

public class studentimp implements studentserve{

	@Override
	public void add(List<student> list,Scanner sc) {
		// TODO Auto-generated method stub
		//����ѧ��
		System.out.println("���������ӵ�ѧ������Ϣ:���������䣬�Ա𣬵�ַ");
		student a=new student();
	    String str=sc.next();
	    String []arr=str.split("��");
		a.setName(arr[0]);				
		a.setAge(Integer.parseInt(arr[1]));			
		a.setSex(arr[2].charAt(0));			
		a.setAdress(arr[3]);
		
		 list.add(a);
		 System.out.println("�������");
	
	}

	@Override
	public void find(List<student> list) {
		// TODO Auto-generated method stub
		//����ѧ��
		for(student i:list){
			i.sofi();
		}
	}

	public void findname(List<student> list, Scanner sc) {
		// TODO Auto-generated method stub
		//����ѧ��
		System.out.println("��������");
		String str=sc.next();
		for(student s:list){
			if(str.equals(s.getName())){
				s.sofi();
				break;
			}
		}
	}

	@Override
	public void delete(List<student> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("������ɾ����ѧ������");
		String me =sc.next();
		for(int i=0;i<list.size();i++){
			student s=list.get(i);
			if(me.equals(s.getName())){
				list.remove(s);
				break;
			}
		}
	}

	@Override
	public void up(List<student> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("�������޸ĵ�ѧ������");
		String str=sc.next();
		String []arr=str.split("��");
		String name=arr[0];
		int age =Integer.parseInt(arr[1]);
		for(student s:list){
			if(name.equals(s.getName())){
				s.setAge(age);
				System.out.println("�޸ĳɹ�");
				break;
			}
		}
	}

}
