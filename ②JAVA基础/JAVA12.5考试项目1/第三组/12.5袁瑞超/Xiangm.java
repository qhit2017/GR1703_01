package com.z;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import javax.security.sasl.SaslClient;

public class Xiangm {
public static void main(String[] args) {
	//1、录入考试信息信息包含姓名、编号、语文、数学、英语成绩，并计算出总成绩
	//2、显示所有考生信息包括姓名、编号、语文、数学、英语成绩、总成绩
	//3、当用户选择3时，又显示一个子菜单：
	//1	打印总分最高分
	//2	打印数学最高分
	//3	打印语文最高分
	//4	打印英语最高分
	//5 退出
	List<xinx>list=new ArrayList<xinx>();
	Scanner Sc=new Scanner(System.in);
   while (true){
	   System.out.println("请按键：1	.录入考生的高考信息  2.显示所有考生信息  3.查询最高分 4.退出功能  ");
	   int n=Sc.nextInt();
	   if(n==1){
			   System.out.println("请录入考生的高考信息  格式：姓名,编号,语文,数学,英语,例：张三,12,78,98,87");
		   String str=Sc.next();
		   String[]arr=str.split(",");
		   xinx xi=new xinx();
		   xi.setName(arr[0]);
		   xi.setBianhao(arr[1]);
		   xi.setYuwen( Integer.parseInt(arr[2]));
		   xi.setShuxue( Integer.parseInt(arr[3]));
		   xi.setYingyu( Integer.parseInt(arr[4]));
		   xi.setZongchengji(Integer.parseInt(arr[2])+Integer.parseInt(arr[3])+Integer.parseInt(arr[4]));
		   list.add(xi);
		   System.out.println("添加成功！");
	   
	   }else if(n==2){
		  System.out.println("显示所有考生信息");
		   for(xinx xi:list){
			   xi.info();
		   }
	  
	   
	   
	   }else if(n==3){
		  while(true){
			  
		   System.out.println("1.打印总分最高分  2	.打印数学最高分   3.打印语文最高分   4.打印英语最高分   5. 返回上一层 ");
		int i=Sc.nextInt();
		if(i==1){
		int max=0;	
		for(xinx xi:list){
			if(max<xi.getZongchengji()){
				max=xi.getZongchengji();
				
			
				
			}
		}
		System.out.println("总成绩是："+max);
		}else if(i==2){
		int max=0;
		for(xinx xi:list){
			if(max<xi.getYuwen()){
				max=xi.getYuwen();
			
			}
		}	
		System.out.println("语文总成绩是："+max);
		}else  if(i==3){
		int  max=0;	
		for(xinx xi:list){
			if(max<xi.getShuxue()){
				max=xi.getShuxue();
			}
		}
		System.out.println("数学最高分是："+max);
		
		}else  if(i==4){
			int max=0;
		for(xinx xi:list){
			if(max<xi.getYingyu()){
				max=xi.getYingyu();
			}
		}
		System.out.println("英语最高分是："+max);
		
		}else  if(i==5){
			System.out.println("返回上一层");
			break;
		}else{
			System.out.println("你输入的不规范");
		}
	  
		
		  
		  
		  }   
	   
	   
	   
	   
	   
	   
	   
	   }else if(n==4){
		   System.out.println("退出");
		   break;
	   }else{
		   System.out.println("你输入的不规范！");
	   }
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   }





}

}




