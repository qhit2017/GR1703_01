package com.kaoshijuan2;

import java.util.List;
import java.util.Scanner;

public class Si  implements San{

	@Override
	public void yi(List<Er>jihe,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("������ѧ���������Ա����䡣���磺����,��,18");
		String a=sc.next();
		String []sz=a.split(",");
		Er s=new Er();
		s.setName(sz[0]);
		s.setSex(sz[1].charAt(0));
		s.setAge(Integer.parseInt(sz[2]));
		jihe.add(s);
		System.out.println("����ɹ���");
	}

	@Override
	public void er(List<Er>jihe,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("������ѧ��������");
		String a1=sc.next();
		/*for(int i=0;i<jihe.size();i++){
			Er j=jihe.get(i);
			j.info();
		}*/
		
		
		for(Er i:jihe){
			i.info();
		}
		System.out.println("��ѯ��ϣ�");
	}

	@Override
	public void san(List<Er>jihe,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("������������");
		String a2=sc.next();
		for(Er i:jihe){
			if(a2.equals(i.getName())){
				i.info();
			}
		}
		System.out.println("��ѯ��ϣ�");
	}

	@Override
	public void si(List<Er>jihe,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("�������Ա�");
		String a3=sc.next();
		for(Er i:jihe){
			if(a3.charAt(0)==i.getSex()){
				i.info();
			}
		}
		System.out.println("��ѯ��ϣ�");
	}

	@Override
	public void wu(List<Er>jihe,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("���������䣺");
		long a4=sc.nextLong();
		for(Er i:jihe){
			if(a4==i.getAge()){
				i.info();
			}
		}
		System.out.println("��ѯ��ϣ�");
	}

}
