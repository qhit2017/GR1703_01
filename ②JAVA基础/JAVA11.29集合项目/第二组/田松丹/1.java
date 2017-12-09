package com.gege;

import java.net.ConnectException;
import java.util.Scanner;

public class O1 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int i=1;
		while(i==1){
		System.out.println("请输入：1 添加学生 2 查询所有学生 3 修改学生 4 删除学生 5 停止");
		int a =sc.nextInt();
		if(a>=0&&a<=5){
			switch(a){
			case 1:{
				System.out.println("添加学生：");continue;
			}
			case 2:{
				System.out.println("查询所有学生：");continue;
			}
			case 3:{
				System.out.println("修改学生：");continue;
			}
			case 4:{
				System.out.println("删除学生：");continue;
			}
			case 5:{
				System.out.println("系统已关闭！");i=2;
			}
			}
			}else{
				System.out.println("您输入的数字有误！");
			}
		}
		
	}
	
}

