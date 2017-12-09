package com.Wjunhui;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;


public class Junhui {
	
	public static void main(String[] args) {
		List<Student> list = new ArrayList<Student>();
		Scanner sc = new Scanner(System.in);
		Jiekou wjh = new Fangfa();
		while(true){
		System.out.println("请输入: 1.添加加学生信息  2.查询所有学生信息  3.输入姓名查找学生信息  4.删除学生  5.修改学生信息  6.退出");
			int i = sc.nextInt();
			if(i==1){
				wjh.zengjia(list, sc);
			}else if(i==2){
				wjh.suoyou(list);
			}else if(i==3){
				wjh.chaxun(list, sc);
			}else if(i==4){
				wjh.shanchu(list, sc);
			}else if(i==5){
				wjh.xiugai(list, sc);
			}else if(i==6){
				System.out.println("结束查询.");
				break;
			}else{
				System.out.println("输入有误.");
			}
		}
		
	}

}
