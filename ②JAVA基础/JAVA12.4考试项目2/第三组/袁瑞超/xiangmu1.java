package com.z;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class xiangmu1 {
	public static void main(String[] args) {
	//请按键：1.录入通讯录 2.显示所有通讯录 3.姓名搜索 4.性别搜索 5.电话搜索  6.程序运行结束	
	List<xinxi>list=new ArrayList<xinxi>();
		Scanner sc=new Scanner(System.in);
	while(true){
		System.out.println("请按键：1.录入通讯录  2.显示所有通讯录  3.姓名搜索  4.性别搜索  5.电话搜索  6.程序运行结束");
	int	 i=sc.nextInt();
		
	
	if(i==1){
		System.out.println("按键1.录入通讯录格式：姓名，性别，电话；例：张三，男，136");
	xinxi a=new xinxi();
	String str=sc.next();
	String []arr=str.split("，");
	a.setName(arr[0]);
	a.setSex(arr[1].charAt(0));
	a.setDianhua(arr[2]);
	list.add(a); 
	System.out.println("添加成功！");
	}else if(i==2){
		System.out.println("按键2：显示所有通讯录");
	}else if(i==3){
		System.out.println("按键3：姓名搜索");
	}else if(i==4){
		System.out.println("按键4：性别搜索");
	}else if(i==5){
		System.out.println("按键5：电话搜索");
	}else if(i==6){
		System.out.println("按键6：程序运行结束");
		break;
	}else{
		System.out.println("你输入的按键不正确！");
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	}
	
	}
	




}
