package com.Wjunhui;

import java.util.List;
import java.util.Scanner;

public class Fangfa implements Jiekou{
	
	@Override
	public void zengjia(List<Student> list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("������ѧ����Ϣ;����,����,�Ա�,��ַ");
		 String a = sc.next();
		 String[] arr = a.split(",");
				 Student n = new Student();
				 int age = Integer.parseInt(arr[1]);
				 n.setName(arr[0]);
				 n.setSex(arr[2]);
				 n.setAge(age);
				 n.setAddress(arr[3]);
				 list.add(n);
				 System.out.println("��ӳɹ���");
	}

	@Override
	public void suoyou(List<Student> list) {
		// TODO Auto-generated method stub
		for(int n=0;n<list.size();n++){
			Student s = list.get(n);
			s.info();
			}
	}

	@Override
	public void chaxun(List<Student> list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("����������:");
		String b = sc.next();
		for(int n=0;n<list.size();n++){
			Student c = list.get(n);
			if(b.equals(c.getName())){
				c.info();
			}
		}
	}

	@Override
	public void shanchu(List<Student> list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("����������:");
		String c = sc.next();
		for(int n=0;n<list.size();n++){
			Student d = list.get(n);
			if(c.equals(d.getName())){
				list.remove(d);
			}
			System.out.println("ɾ���ɹ���");
		}
	}

	@Override
	public void xiugai(List<Student> list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("�����������Լ��޸���Ϣ;��:����,����,�Ա�,��ַ");
		String d = sc.next();
		String[] str = d.split(",");
		int age = Integer.parseInt(str[1]);
			for(int n=0;n<list.size();n++){
				Student z = list.get(n);
				if(str[0].equals(z.getName())){
					z.setAge(age);
					z.setSex(str[2]);
					z.setAddress(str[3]);
				}
			}
			System.out.println("�޸ĳɹ���");
	}
	
}
