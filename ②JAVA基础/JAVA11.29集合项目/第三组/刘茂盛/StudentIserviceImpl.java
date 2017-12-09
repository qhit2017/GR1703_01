package com.zuoye;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class StudentIserviceImpl implements StudentIservice{

	@Override
	public void tianjia(List<Student> list,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("增加学生");
		System.out.println("请输入姓名，性别，年龄，地址.格式：张三,男,18,上海");
		String str=sc.next();
		String []arr=str.split("，");
		Student s=new Student();
		s.setName(arr[0]);
		s.setSex(arr[1]);
		s.setAge(arr[2]);
		s.setAddress(arr[3]);
		list.add(s);
		System.out.println("保存成功！");
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
		System.out.println("输入姓名查找学生：");
		String a=sc.next();
		for(Student s:list){
			if(a.equals(s.getName())){
				s.info();
				break;
			}
		}
	}

	public void Del(Scanner sc,List<Student> list) {
		System.out.println("输入要删除学生的姓名：");
		// TODO Auto-generated method stub
		String a=sc.next();
		for(int i=0;i<list.size();i++){
			Student s=list.get(i);
			if(a.equals(s.getName())){
				list.remove(s);
				System.out.println("删除成功！");
				break;
			}
		}
	}

	@Override
	public void xiugai(Scanner sc,List<Student> list) {
		// TODO Auto-generated method stub
		System.out.println("修改学生信息");
		System.out.println("输入学生的姓名以及修改后的姓名，性别，年龄，地址，比如：张三，李四，男，18，上海");
		String b=sc.next();
		String []arr=b.split("，");
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
				System.out.println("修改成功！");
				break;
			}
		}
		System.out.println("修改成功！");
	}

	
}
