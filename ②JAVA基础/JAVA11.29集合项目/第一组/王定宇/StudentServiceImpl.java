package lx;

import java.util.List;
import java.util.Scanner;

public class StudentServiceImpl implements StudentIservice {
	
	

	@Override
	public void insert(List<Student> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("������ѧ����Ϣ�����磺����,��,15,����");
		String str =sc.next();
		String[] arr = str.split(",");
		Student s = new Student();
		s.setName(arr[0]);
		s.setSex(arr[1].charAt(0));
		s.setAge(Integer.parseInt(arr[2]));
		s.setAddress(arr[3]);
		list.add(s);
		System.out.println("���ӳɹ�");
	}

	

	@Override
	public void findAll(List<Student> list) {
		// TODO Auto-generated method stub
		for(Student i:list){
			i.inof();
		}
	}



	@Override
	public void findByName(List<Student> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("������ѧ������");
		String name =sc.next();
		for(Student s:list){
			if(name.equals(s.getName())){
				s.inof();
				break;
			}
		}
	}



	@Override
	public void delete(List<Student> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("������ѧ������:");
		String name =sc.next();
		for(int i=0; i<list.size(); i++){
			Student s =list.get(i);
			if(name.equals(s.getName())){
				list.remove(s);
				break;
			}
		}
		System.out.println("ɾ���ɹ�");
	}



	@Override
	public void update(List<Student> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("�����������Լ��µ����䣬����:����,15");
		String str =sc.next();
		String[] arr =str.split(",");
		String name = arr[0];
		int age =Integer.parseInt(arr[1]);
		
		for(Student s:list){
			if(name.equals(s.getName())){
				s.setAge(age);
				System.out.println("�޸ĳɹ�");
				break;
			}
		}
	}

	
}
