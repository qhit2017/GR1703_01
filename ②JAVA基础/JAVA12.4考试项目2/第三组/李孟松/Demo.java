package com.pri;
import java.awt.List;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Scanner;


public class Demo {
	
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		ArrayList<Demo1>list=new ArrayList<Demo1>();
		
		while(true){
			System.out.println("1.录入通讯录信.2.显示所有通讯录信 3姓名搜索4.性别搜索5.电话搜索6.退出功能");
			int n=sc.nextInt();
			if(n==1){
				//System.out.println("录入通讯录");
				System.out.println("请输入信息，例如：张三，男，110120119");
				Demo1 a=new Demo1();
				String str =sc.next();
				String []arr=str.split(",");
				a.setName(arr[0]);
				a.setSex(arr[1].charAt(0));
				a.setPhonenum(arr[2]);
				list.add(a);
				System.out.println("添加完成");
				
			}else if(n==2){
				System.out.println("显示所有通讯录信");
				for(Demo1 a:list){
					a.info();
				}
				
				
			}else if(n==3){
				//System.out.println("姓名搜索");
				System.out.println("请输入姓名");
				String str=sc.next();
				for(Demo1 a:list){
					if(str.equals(a.getName())){
						a.info();
						break;
					}
				}
			}else if(n==4){
				//System.out.println("性别搜索");
				System.out.println("请输入性别");
				String str=sc.next();
				for(Demo1 a:list){
					if(str.equals(a.getSex())){
						a.info();
						break;
					}
				}
			}else if(n==5){
				//System.out.println("电话搜索");
				System.out.println("请输入电话");
				String str=sc.next();
				for(Demo1 a:list){
					if(str.equals(a.getPhonenum())){
						a.info();
						break;
					}
				}
				
			}else if(n==6){
				System.out.println("退出功能");
				break;
			}else{
				System.out.println("你输入的数字不规范");
			}
		}
		
		
			
	}

}
