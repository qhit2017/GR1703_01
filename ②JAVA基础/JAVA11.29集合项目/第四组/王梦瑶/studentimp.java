package day28;

import java.util.List;
import java.util.Scanner;

public class studentimp implements studentserve{

	@Override
	public void add(List<student> list,Scanner sc) {
		// TODO Auto-generated method stub
		//增加学生
		System.out.println("请输入增加的学生的信息:姓名，年龄，性别，地址");
		student a=new student();
	    String str=sc.next();
	    String []arr=str.split("，");
		a.setName(arr[0]);				
		a.setAge(Integer.parseInt(arr[1]));			
		a.setSex(arr[2].charAt(0));			
		a.setAdress(arr[3]);
		
		 list.add(a);
		 System.out.println("保存完成");
	
	}

	@Override
	public void find(List<student> list) {
		// TODO Auto-generated method stub
		//遍历学生
		for(student i:list){
			i.sofi();
		}
	}

	public void findname(List<student> list, Scanner sc) {
		// TODO Auto-generated method stub
		//查找学生
		System.out.println("输入姓名");
		String str=sc.next();
		for(student s:list){
			if(str.equals(s.getName())){
				s.sofi();
				break;
			}
		}
	}

	@Override
	public void delete(List<student> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("请输入删除的学生姓名");
		String me =sc.next();
		for(int i=0;i<list.size();i++){
			student s=list.get(i);
			if(me.equals(s.getName())){
				list.remove(s);
				break;
			}
		}
	}

	@Override
	public void up(List<student> list, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("请输入修改的学社姓名");
		String str=sc.next();
		String []arr=str.split("，");
		String name=arr[0];
		int age =Integer.parseInt(arr[1]);
		for(student s:list){
			if(name.equals(s.getName())){
				s.setAge(age);
				System.out.println("修改成功");
				break;
			}
		}
	}

}
