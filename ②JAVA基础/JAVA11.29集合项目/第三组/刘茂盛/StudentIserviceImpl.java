package com.zuoye;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class StudentIserviceImpl implements StudentIservice{

	@Override
	public void tianjia(List<Student> list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("����ѧ��");
		System.out.println("�������������Ա����䣬��ַ.��ʽ������,��,18,�Ϻ�");
		String str=sc.next();
		String []arr=str.split("��");
		Student s=new Student();
		s.setName(arr[0]);
		s.setSex(arr[1]);
		s.setAge(arr[2]);
		s.setAddress(arr[3]);
		list.add(s);
		System.out.println("����ɹ���");
	}

	@Override
	public void findall(List<Student>list) {
		// TODO Auto-generated method stub
		for(Student s:list){
			s.info();
		}
	}

	@Override
	public void find(Scanner sc,List<Student> list) {
		// TODO Auto-generated method stub
		System.out.println("������������ѧ����");
		String a=sc.next();
		for(Student s:list){
			if(a.equals(s.getName())){
				s.info();
				break;
			}
		}
	}

	public void Del(Scanner sc,List<Student> list) {
		System.out.println("����Ҫɾ��ѧ����������");
		// TODO Auto-generated method stub
		String a=sc.next();
		for(int i=0;i<list.size();i++){
			Student s=list.get(i);
			if(a.equals(s.getName())){
				list.remove(s);
				System.out.println("ɾ���ɹ���");
				break;
			}
		}
	}

	@Override
	public void xiugai(Scanner sc,List<Student> list) {
		// TODO Auto-generated method stub
		System.out.println("�޸�ѧ����Ϣ");
		System.out.println("����ѧ���������Լ��޸ĺ���������Ա����䣬��ַ�����磺���������ģ��У�18���Ϻ�");
		String b=sc.next();
		String []arr=b.split("��");
		String name=arr[0];
		String newname=arr[1];
		String sex=arr[2];
		String age=arr[3];
		String address=arr[4];
		for(int i=0;i<list.size();i++){
			Student s=list.get(i);
			if(b.equals(s.getName())){
				s.setName(newname);
				s.setSex(sex);
				s.setAge(age);
				s.setAddress(address);
				System.out.println("�޸ĳɹ���");
				break;
			}
		}
		System.out.println("�޸ĳɹ���");
	}

	
}
