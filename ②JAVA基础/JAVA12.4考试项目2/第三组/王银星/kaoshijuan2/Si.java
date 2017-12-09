package com.kaoshijuan2;

import java.util.List;
import java.util.Scanner;

public class Si  implements San{

	@Override
	public void yi(List<Er>jihe,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("请输入学生姓名，性别，年龄。例如：张三,男,18");
		String a=sc.next();
		String []sz=a.split(",");
		Er s=new Er();
		s.setName(sz[0]);
		s.setSex(sz[1].charAt(0));
		s.setAge(Integer.parseInt(sz[2]));
		jihe.add(s);
		System.out.println("输入成功！");
	}

	@Override
	public void er(List<Er>jihe,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("请输入学生姓名：");
		String a1=sc.next();
		/*for(int i=0;i<jihe.size();i++){
			Er j=jihe.get(i);
			j.info();
		}*/
		
		
		for(Er i:jihe){
			i.info();
		}
		System.out.println("查询完毕！");
	}

	@Override
	public void san(List<Er>jihe,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("请输入姓名：");
		String a2=sc.next();
		for(Er i:jihe){
			if(a2.equals(i.getName())){
				i.info();
			}
		}
		System.out.println("查询完毕！");
	}

	@Override
	public void si(List<Er>jihe,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("请输入性别：");
		String a3=sc.next();
		for(Er i:jihe){
			if(a3.charAt(0)==i.getSex()){
				i.info();
			}
		}
		System.out.println("查询完毕！");
	}

	@Override
	public void wu(List<Er>jihe,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("请输入年龄：");
		long a4=sc.nextLong();
		for(Er i:jihe){
			if(a4==i.getAge()){
				i.info();
			}
		}
		System.out.println("查询完毕！");
	}

}
