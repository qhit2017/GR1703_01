package com.aaa;

import java.util.ArrayList;
import java.util.Scanner;

public class Shixian implements StudentServe{

	@Override
	public void a(Scanner sc,ArrayList<Student> list) {
		// TODO Auto-generated method stub
		System.out.println("����ѧ��");
		String str=sc.next();
		String arr[]=str.split(",");
		Student b=new Student();
		b.setName(arr[0]);
		b.setAge(arr[1]);
		b.setSex(arr[2]);
		b.setDizhi(arr[3]);
		list.add(b);
		System.out.println("��ӳɹ�");
	}

	
	@Override
	public void b(ArrayList<Student> list) {
		// TODO Auto-generated method stub
		System.out.println("��ѯ����ѧ��");
		for(Student b: list){
			b.info();
		}
	}


	@Override
	public void c(Scanner sc,ArrayList<Student> list) {
		// TODO Auto-generated method stub
		System.out.println("������������ѧ��");
		String name= sc.next();
		for(int i=0;i<=list.size();i++){
			Student s=list.get(i);
			if(name.equals(s.getName())){
				s.info();
				
			}
		}
	}


	@Override
	public void d(Scanner sc,ArrayList<Student> list) {
		// TODO Auto-generated method stub
		System.out.println("ɾ��ѧ��");
		String s=sc.next();
		for(int i=0;i<list.size();i++){
			Student j=list.get(i);
			if(s.equals(j)){
				list.remove(i);
				System.out.println("ɾ���ɹ�");
				break;
			}
		}
	}
	}



