package com.lizhixin;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Index {
	public static void main(String[] args) {
		service ser =new serviceIM(); 
		List<People> list = new ArrayList<People>();
		Scanner  sc =new Scanner(System.in);
		while(true){
		System.out.println("1添加通讯录信息2查询所有信息3根据姓名查询4根据性别查询5根据电话号码查询6退出");
		int n =sc.nextInt();
		if(n==1){
			ser.Addto(list, sc);//添加信息
		}else if(n==2){
			ser.Inquireall(list);//查询全部
		}else if(n==3){
			ser.queryName(list, sc);//查询姓名
		}else if(n==4){
			ser.querySex(list, sc);//查询性别
		}else if(n==5){
			ser.queryNum(list, sc);//查询电话号码
		}else if(n==6){
			System.out.println("退出成功。");
		}else{
			System.out.println("您输入的有误，请重新输入：");
		}
		}
	}
	
	
}
