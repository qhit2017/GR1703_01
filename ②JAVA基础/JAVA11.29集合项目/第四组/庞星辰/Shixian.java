package com.aaa;

import java.util.ArrayList;
import java.util.Scanner;

public class Shixian implements StudentServe{

	@Override
	public void a(Scanner sc,ArrayList<Student> list) {
		// TODO Auto-generated method stub
		System.out.println("增加学生");
		String str=sc.next();
		String arr[]=str.split(",");
		Student b=new Student();
		b.setName(arr[0]);
		b.setAge(arr[1]);
		b.setSex(arr[2]);
		b.setDizhi(arr[3]);
		list.add(b);
		System.out.println("添加成功");
	}

	
	@Override
	public void b(ArrayList<Student> list) {
		// TODO Auto-generated method stub
		System.out.println("查询所有学生");
		for(Student b: list){
			b.info();
		}
	}


	@Override
	public void c(Scanner sc,ArrayList<Student> list) {
		// TODO Auto-generated method stub
		System.out.println("输入姓名查找学生");
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
		System.out.println("删除学生");
		String s=sc.next();
		for(int i=0;i<list.size();i++){
			Student j=list.get(i);
			if(s.equals(j)){
				list.remove(i);
				System.out.println("删除成功");
				break;
			}
		}
	}
	}



