package com.zxiangmu;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class xm {
	//1、新增商品，录入商品信息包含商品编号、名称、价格、初始数量
	//2、进货，输入商品编号和数量，如有此编号商品，则增加相应数量，如没有则显示进货失败。
	//3、销售，输入商品编号和数量，如有此编号商品且商品数量大于销售数量，则减少相应数量，否则显示销售失败。
	//4、参看库存可以显示所有商品信息包含商品编号、名称、价格、数量
	//5、退出功能可以退出系统

	public static void main(String[] args) {
		List<xinxi> list=new ArrayList<xinxi>();
		Scanner Sc=new Scanner(System.in);
	while(true){
		System.out.println("1.新增商品   2.进货   3.销售  4.参看库存   5.退出功能  ");
	  int n=Sc.nextInt();
	if(n==1){
		System.out.println("请输入新增商品  格式：编号,名字,价格,初始数量,例：45,鸡肉火腿,60,50");
		String str=Sc.next();
		String [] arr =str.split(",");
		xinxi  xi=new  xinxi();
		xi.setBianhao(arr[0]);
		xi.setName(arr[1]);
		xi.setJiage(Integer.parseInt(arr[2]));
		xi.setChushishuliang(Integer.parseInt(arr[3]));
		list.add(xi);
	System.out.println("添加成功！");
	}else if(n==2){
		System.out.println("请输入进货编号,数量,例:01,50");
	String str=Sc.next();
	String [] arr=str.split(",");
	String a=arr[0];
	int b=  Integer.parseInt(arr[1]);
	boolean flag=true;
	for(xinxi e:list){
		if(e.equals(e.getBianhao())){
		e.setBianhao(e.getBianhao()+b);	
		flag=false;
			System.out.println("进货成功！");
		break;
		
		}
	}
	if(flag){
		System.out.println("进货失败!");
	}
	
	
	}else if(n==3){
		System.out.println("请输入销售编号,数量,例：02,50：");
	String str=Sc.next();
	String []arr=str.split(",");
	String a=arr[0];
	int b=Integer.parseInt(arr[1]);
	boolean flag =true;
	for(xinxi e:list){
		if(a.equals(e.getBianhao())&&e.getChushishuliang()>=b){
		e.setChushishuliang(e.getChushishuliang()-b);
		flag=false;
		System.out.println("销售成功！");
		break;
		}
	}
	if(flag){
		System.out.println("销售失败！");
	}
	
	}else if(n==4){
		System.out.println("参看库存");
	for(xinxi a:list){
		a.info();
	}
	
	
	
	}else if(n==5){
		System.out.println("退出");
		break;
	}else{
		System.out.println("你输入的不规范！");
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	}
	
	
	
	
	
	
	
	}




}
