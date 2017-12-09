package com.shijiuhao;

import java.awt.List;
import java.util.Scanner;

public class StudentSeverviceImpl implements StudentISevsrvice{

	@Override
	public void insert(Scanner sc,java.util.List<Student>java) {
		// TODO Auto-generated method stub
		System.out.println("请输入学生信息比如：张三，男");
		String str =sc.next();
		str.split(",");
		Student s =new Student();
		  String[] arr=str.split(",");
		  s.setName(arr[0]);
		  s.setSex(str.charAt(0));
	}

	@Override
	public void findAll(java.util.List<Student> list) {
		// TODO Auto-generated method stub
		for(Student i:list){
			Student s =new Student();
			s.info();
		}
	}

	

	@Override
	public void bindName(java.util.List<Student> list) {
		// TODO Auto-generated method stub
		for(Student i:list){
			Student s =new Student();
			Scanner sc =new Scanner(System.in);
			String name =sc.next();
			if(s.getName().equals(name)){
			s.info();
			
	}

}
	}

	@Override
	public void Delete(Scanner sc,java.util.List<Student>list) {
		// TODO Auto-generated method stub
		for(Student i:list){
			Student s =new Student();
			
			String name =sc.next();
			if(s.getName().equals(name)){
			list.remove(i);
	}}
}

	@Override
	public void update(Scanner sc,java.util.List<Student>list) {
		// TODO Auto-generated method stub
		for(Student i:list){
			Student s =new Student();
			
			String name =sc.next();
			String sex =sc.next();
			if(s.getName().equals(name)){
				System.out.println("请输入修改后的性别：");
			 
	}}
		
	}
}