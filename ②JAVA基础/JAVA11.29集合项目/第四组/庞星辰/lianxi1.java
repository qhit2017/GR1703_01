package com.aaa;

import java.util.ArrayList;
import java.util.Scanner;
import java.util.jar.Attributes.Name;

public class lianxi1  {
	
	
	//请按键：1增加学生   2查询所有学生   3输入姓名查找学生  4删除学生  5修改学生信息  6退出
		public static void main(String[] args) {
			Scanner sc= new Scanner(System.in);
			ArrayList<Student> list=new ArrayList<Student>();
			Shixian a =new Shixian();
			while(true){
				System.out.println("请按键：1增加学生   2查询所有学生   3输入姓名查找学生  4删除学生  5修改学生信息  6退出");
				int n=sc.nextInt();
				if(n==1){

					
					a.a(sc, list);
				
				}
				if(n==2){

					a.b(list);
				if(n==3){
					a.c(sc, list);
				}
				if(n==4){
					a.d(sc, list);
				
				}
				if(n==5){
					System.out.println("修改学生信息");
				}
				if(n==6){
					System.out.println("退出");
					break;
				}
			}
	
	
		}
		}
}