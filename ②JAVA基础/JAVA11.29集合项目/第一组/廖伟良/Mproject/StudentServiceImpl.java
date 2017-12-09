package Mproject;

import java.util.List;
import java.util.Scanner;

public class StudentServiceImpl implements StudentIService{

	public void insert(List<Student>list,Scanner sc) {
		// TODO Auto-generated method stub
		 String str = sc.next();
		 String [ ]arr = str.split(",");
		 Student s = new Student();
		 s.setName(arr[0]);
		 s.setSex(arr[1].charAt(0));
		 s.setAge(Integer.parseInt(arr[2]));
		 s.setAddress(arr[3]);
		 list.add(s);
	}

	public void findAll(List<Student>list) {
		// TODO Auto-generated method stub
		 for(Student i:list){
			 i.info();
		 }
	}

	public void findByName(List<Student> list, Scanner sc) {
		// TODO Auto-generated method stub
		String name = sc.next();
		for(Student s:list){
			if(name.equals(s.getName()));
				s.info();
				break;
		}
	}

	@Override
	public void delete(List<Student> list, Scanner sc) {
		// TODO Auto-generated method stub
		String name = sc.next();
		for(int i = 0; i<list.size();i++){
			Student s = list.get(i);
			if(name.equals(s.getName())){
				list.remove(s);
				break;
			}
		}
		System.out.println("删除成功");
	}

	@Override
	public void modifyInfo(List<Student> list, Scanner sc) {
		// TODO Auto-generated method stub
		String str = sc.next();
		String []arr = str.split(",");
		String name = arr[0];
		int age = Integer.parseInt(arr[1]);
		for(Student s:list){
			if(name.equals(s.getName())){
				s.setAge(age);
				System.out.println("修改成功");
				break;
			}
		}
	}
}
