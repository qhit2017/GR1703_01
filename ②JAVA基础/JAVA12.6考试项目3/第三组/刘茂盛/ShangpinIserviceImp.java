package com.test3;

import java.util.List;
import java.util.Scanner;

public class ShangpinIserviceImp implements ShangpinIservice{

	@Override
	public void xinzeng(List<Shangpin>list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("������Ʒ��¼����Ʒ��Ϣ������Ʒ��š����ơ��۸񡢳�ʼ����,���磺01��ơ�ƣ�5��50");
		String n=sc.next();
		String []arr=n.split("��");
		Shangpin s=new Shangpin();
		s.setBianhao(arr[0]);
		s.setName(arr[1]);
		s.setPrice(Integer.parseInt(arr[2]));
		s.setShuliang(Integer.parseInt(arr[3]));
		list.add(s);
		System.out.println("�����ɹ���");
		
	}

	@Override
	public void jinhuo(List<Shangpin>list1,List<Shangpin>list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("������������Ʒ��ź����������磺01��50 ");
		//���д˱����Ʒ����������Ӧ��������û������ʾ����ʧ�ܡ�
		String n=sc.next();
		String []arr=n.split("��");
		Shangpin s2=new Shangpin();
		String a=arr[0];
		String name="";
		int b=Integer.parseInt(arr[1]);
		boolean flag=true;
		for(Shangpin s:list){
			if(a.equals(s.getBianhao())){
				s.setShuliang(s.getShuliang()+b);
				s2.setName(s.getName());
				s2.setJinhuoshuliang(b);
				list1.add(s2);
				flag=false;
				System.out.println("�����ɹ���");
				break;
			}
		}
		if(flag){
			System.out.println("����ʧ�ܣ�");
		}
		
		
	}

	@Override
	public void xiaoshou(List<Shangpin>list1,List<Shangpin>list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("���ۣ�������Ʒ��ź�����,���磺01��50");
		//���д˱����Ʒ����Ʒ�������������������������Ӧ������������ʾ����ʧ�ܡ�
		String n=sc.next();
		Shangpin s1=new Shangpin();
		double i=0;
		String []arr=n.split("��");
		String a=arr[0];
		int b=Integer.parseInt(arr[1]);
		boolean flag=true;
		for(Shangpin s:list){
			if(a.equals(s.getBianhao())&&s.getShuliang()>=b){
				s.setShuliang(s.getShuliang()-b);
				System.out.println("���۳ɹ���");
				flag=false;
				s1.setXiaoshoujine(b*s.getPrice());
				s1.setName(s.getName());
				list1.add(s1);
				break;
			}
		}
		if(flag){
			System.out.println("����ʧ�ܣ�");
		}
		
	}

	@Override
	public void findall(List<Shangpin> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("������Ʒ����Ϣ��");
		for(Shangpin s:list){
			s.info();
		}
	}

	@Override
	public void jinhuojilu(List<Shangpin>list1,List<Shangpin> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("������¼��");
		for(Shangpin s:list1){
			s.info1();
			
		}
	}

	@Override
	public void xiaoshoujine(List<Shangpin> list1, List<Shangpin> list,Scanner sc) {
		// TODO Auto-generated method stub
		for(Shangpin s:list1){
			s.info2();
			
		}
	}

}
