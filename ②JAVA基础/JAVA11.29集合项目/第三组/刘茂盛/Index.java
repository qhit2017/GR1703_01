package com.zuoye;

import java.util.ArrayList;
import java.util.Scanner;


public class Index {
		//请按键：1 增加学生  2 查询所有学生  3 输入姓名查找学生  4删除学生  5修改学生信息 6 退出
		public static void main(String[] args) {
			Scanner sc=new Scanner(System.in);
			ArrayList<Student>list=new ArrayList<Student>();
			while(true){
				System.out.println("请按键：1 增加学生  2 查询所有学生  3 输入姓名查找学生  4删除学生  5修改学生信息 6 退出");
				int n=sc.nextInt();
				StudentIservice service= new StudentIserviceImpl();
				if(n==1){
					service.tianjia(list,sc);
				}else if(n==2){
					service.findall(list);
				}else if(n==3){
					service.find(sc, list);
					
					
				}else if(n==4){
					service.Del(sc, list);
					
				}else if(n==5){
					service.xiugai(sc, list);
				}else if(n==6){
					System.out.println("退出");
				}else{
					System.out.println("请您按提示输入数字！");
				}
			}
			
				
			
		}

	
}
