package ������ϰ;

import java.util.List;
import java.util.Scanner;

public class StudentService implements StudentInface {

	@Override
	public void insert(List<Student> list, Scanner sc) {
		// TODO Auto-generated method stub
		Student s=new Student();
		System.out.println("����ѧ�����磺����,��,19,����");
		String str=sc.next();
		String[] arr=str.split(",");
		s.setName(arr[0]);
		s.setSex(arr[1].charAt(0));
		s.setAge(Integer.parseInt(arr[2]));
		s.setAddress(arr[3]);			
		list.add(s);
		System.out.println("�����ɣ�");	
		
	}

	@Override
	public void findAll(List<Student> list) {
		// TODO Auto-generated method stub
		System.out.println("��ѯ����ѧ��");
		for(Student i:list){
			i.info();
		}		
	}

	@Override
	public void findByname(List<Student> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("������Ҫ��ѯ��ѧ������");
		String name=sc.next();
		for(Student i:list){
			if(name.equals(i.getName())){
				i.info();
				break;
			}
		}
	}
	@Override
	public void delete(List<Student> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("��������Ҫɾ����ѧ��");
		String name=sc.next();
		for(Student i:list){
			if(name.equals(i.getName())){				
				list.remove(i);
				System.out.println("ɾ���ɹ�");
				break;
			}
		}
		
	}

	@Override
	public void update(List<Student> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("��������Ҫ�޸�ѧ�������֣�������������޸�");
		String name=sc.next();
		System.out.println("��������Ҫ�Ķ������䣺");
		int age=sc.nextInt();
		for(Student i:list){
			if(name.equals(i.getName())){
				i.setAge(age);
				System.out.println("�޸����!");
			}
		}
		
	}

	
}
