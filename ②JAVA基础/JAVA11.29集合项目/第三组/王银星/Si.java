package com.zuoye;

import java.util.List;
import java.util.Scanner;

public class Si  implements San{

	@Override
	public void yi(List<Er>jihe,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("请输入：姓名，性别，年龄，住址");
		String str=sc.next();
		Er a=new Er();
		String []sz=str.split(",");
		boolean flag=true;
		for(Er i:jihe){
			if(sz[0].equals(i.getName())){
				System.out.println("此学生已存在，请重新输入：");
				flag=false;
				break;
			}
	if(flag){	
		a.setName(sz[0]);
		a.setXingbie(sz[1].charAt(0));
		a.setNianling(Integer.parseInt(sz[2]));
		a.setDizhi(sz[3]);
		jihe.add(a);
		System.out.println("添加成功！");
	}
		}
	}

	@Override
	public void er(List <Er> jihe) {
		// TODO Auto-generated method stub
		for(Er s:jihe){
			s.info();
		}
	}

	@Override
	public void san(List<Er> jihe, Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("请输入学生姓名：");
		String i1=sc.next();
		for(Er s:jihe){
		if(i1.equals(s.getName())){
			System.out.print("查询结果："+"\t");
			s.info();
		}
		}
	}

	@Override
	public void si(List <Er> jihe,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("请输入删除学生姓名：");
		String s=sc.next();
		for(int a=0;a<jihe.size();a++){
			Er s1=jihe.get(a);
			if(s.equals(s1.getName())){
				jihe.remove(s1);
				System.out.println("删除成功！");
				break;
			}
		}
	}

	@Override
	public void wu(List <Er> jihe,Scanner sc) {
		// TODO Auto-generated method stub
		System.out.println("请输入学生姓名和修改后的年龄，中间用“,“隔开：");
		String a1=sc.next();
		String[]arr=a1.split(",");
		String name=arr[0];
		int i=Integer.parseInt(arr[1]);
		for(Er s:jihe){
			if(arr[0].equals(s.getName())){
			s.setNianling(i);
				System.out.println("修改成功！");
				break;
			}
		}
	}
	

}
