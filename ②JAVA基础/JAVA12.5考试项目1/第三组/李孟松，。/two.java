package com.procedure;

import java.util.ArrayList;
import java.util.Scanner;

public class two {
	
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		ArrayList<one>list=new ArrayList<one>();
		
		while(true){
			System.out.println("1录入考生的高考信息 	2显示所有考生信息	3查询最高分,包括:总分最高分和单科最高分	4退出功能");
			int n=sc.nextInt();
			if(n==1){
				System.out.println("1、录入考试信息信息包含姓名、编号、语文、数学、英语成绩，并计算出总成绩");
				String str=sc.next();
				one a=new one();
				String[]arr=str.split(",");
				a.setName(arr[0]);
				a.setBianhao(arr[1]);
				a.setYuwen(Integer.parseInt(arr[2]));
				a.setShuxue(Integer.parseInt(arr[3]));
				a.setYingyu(Integer.parseInt(arr[4]));
				a.setZongfen(Integer.parseInt(arr[2])+Integer.parseInt(arr[3])+Integer.parseInt(arr[4]));
				list.add(a);
				System.out.println("录入成功");
				
				
			}else if(n==2){
				System.out.println("2、显示所有考生信息包括姓名、编号、语文、数学、英语成绩、总成绩");
				for(one a:list){
					a.info();
				}
			}else if(n==3){
				System.out.println("3、当用户选择3时，又显示一个子菜单1	打印总分最高分2	打印数学最高分3	打印语文最高分4	打印英语最高分5	退出");
				while(true){
					int a=sc.nextInt();
					if(a==1){
						int max=0;
						for(one s:list){
							if(max<s.getZongfen()){
								max=s.getZongfen();
							}
						}
						System.out.println(max);
						
					}else if(a==2){
						int m=0;
						for(one s:list){
							if(m<s.getShuxue()){
								m=s.getShuxue();
							}
						}
						System.out.println(m);
						
					}else if(a==3){
						int y=0;
						for(one s:list){
							if(y<s.getShuxue()){
								y=s.getShuxue();
							}
						}
						System.out.println(y);
						
						
					}else if(a==4){
						int e=0;
						for(one s:list){
							if(e<s.getShuxue()){
								e=s.getShuxue();
							}
						}
						System.out.println(e);
						
						                             
					}else if(a==5){
						break;
					}else{
						System.out.println("您输入的数字不规范");
					}
				}
			}else if(n==4){
				break;
			}else{
				System.out.println("您输入的数字不规范");
			}
			
		}
		
		
	}

}
