package com.infor;

import java.util.List;
import java.util.Scanner;

public class StudentImp implements StudentIService {

	public void insert(Scanner sc,List<Student> list1) {
		System.out.println("������ѧ����Ϣ,��ʽ�磺'����,20,��,����'");
		String str=sc.next();
		
		String arr1[]=str.split(",");
		if(arr1.length!=4||arr1[0].length()>4||arr1[1].length()>3||arr1[2].length()>1){
			System.out.println("�������ѧ����Ϣ��������������");
			
		}else{
			Student a1=new Student();
			a1.setName(arr1[0]);
			int age=Integer.parseInt(arr1[1]);
			a1.setAge(age);
			char sex=arr1[2].charAt(0);
			a1.setSex(sex);
			a1.setAddress(arr1[3]);
			list1.add(a1);
			System.out.println("ѧ����Ϣ��ӳɹ�");
		}
	}

	public void findall(List<Student> list1) {
		for(Student m:list1){
			m.info();
		}
	}

	public void findone(List<Student> list1,Scanner sc) {
		
		System.out.println("������ѧ��������");
		String str=sc.next();
		for(int i=0;i<list1.size();i++){
			Student s2=list1.get(i);
			if(s2.getName().equals(str)){
				s2.info();
				break;
			}else if((list1.size()-1)==i){
				System.out.println("û����λѧ������Ϣ������������");
			}
		}
	}

	public void deleteone(List<Student> list1,Scanner sc) {
		System.out.println("������ѧ������,���Ҫɾ�����ѧ��,����Ӣ�Ķ��Ÿ���,���磺����,����");
		String str2=sc.next()+",1";
		String namearr[]=str2.split(",");
	out1:	for(int i=0;i<list1.size();i++){
				Student s1=list1.get(i);
				for(int t=0;t<namearr.length-1;t++){
				
					if((s1.getName()).equals(namearr[t])){
						list1.remove(s1);
						System.out.println("ɾ���ɹ�������");
						i--;
						continue out1 ;
					}
				
			}
		}
		
	}
	public void changeone(List<Student> list1,Scanner sc) {
		System.out.println("������ѧ��������");
		String str2=sc.next();
		for(int i=0;i<list1.size();i++){
			Student s1=list1.get(i);
				if((s1.getName()).equals(str2)){
						System.out.println("�������µ�����");
						String str3=sc.next();
						if(str3.length()>3){
							System.out.println("���������������!����������");
							continue;
						}else{
							int age=Integer.parseInt(str3);
							s1.setAge(age);
						}
						System.out.println("�������µ��Ա�");
						String str4=sc.next();
						if(str4.equals("��")||str4.equals("Ů")){
							char sex=str4.charAt(0);
							s1.setSex(sex);
						}else{
							System.out.println("��������Ա�����!����������");
							continue; 
						}
						System.out.println("�������µĵ�ַ");
						String str5=sc.next();
						s1.setAddress(str5);
						System.out.println("�޸����");
				}else{
					System.out.println("�Բ���,���޴��ˣ�");
				}
		}
		
	}

	

	
	
}
