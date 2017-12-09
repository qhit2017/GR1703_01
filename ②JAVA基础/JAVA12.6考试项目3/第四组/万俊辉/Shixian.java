package com.wjh;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Shixian {
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		List<Shopping> list = new ArrayList<Shopping>();
		while(true){
			System.out.println("1.存储商品   2.进货   3.销售   4.查看库存   5.销售记录  6.进入记录   7.退出\n请输入");
			int sum = sc.nextInt();
			if(sum==1){
				System.out.println("请填写商品信息：编号，姓名，价格，数量；例如：1，方便面，5，20");
				String  str = sc.next();
				String[] arr = str.split("，");
				Shopping sp = new Shopping();
				boolean b = true;
				for(Shopping s:list){
					if(Integer.parseInt(arr[0])==s.getBianhao()||arr[1].equals(s.getName())){
						b=false;
						System.out.println("该编号已被存入或有该商品.");
						break;
					}
				}
				if(b){
					sp.setBianhao(Integer.parseInt(arr[0]));
					sp.setName(arr[1]);
					sp.setJiage(Integer.parseInt(arr[2]));
					sp.setShuliang(Integer.parseInt(arr[3]));
					sp.setName1(arr[1]);
					sp.setName2(arr[1]);
					list.add(sp);
					System.out.println("存储成功！");				
				}
			}else if(sum==2){
				System.out.println("请输入进货商品编号和数量，格式为：编号,数量");
				String str = sc.next();
				String[] arr = str.split(",");
				boolean b = true;
				for(Shopping s:list){
					if(Integer.parseInt(arr[0])==s.getBianhao()){
						s.setShuliang(s.getShuliang()+Integer.parseInt(arr[1]));
						s.setShuliang2(s.getShuliang2()+Integer.parseInt(arr[1]));
						b=false;
						System.out.println("进货成功.");
						break;
					}
				}
				if(b){
					System.out.println("进货失败.");
				}
			}else if(sum==3){
				System.out.println("请输入销售商品的编号和数量，格式为：编号,数量");
				String str = sc.next();
				String[] arr = str.split(",");
				boolean  b = true;
				for(Shopping s:list){
					if(Integer.parseInt(arr[0])==s.getBianhao()&&Integer.parseInt(arr[1])<=s.getShuliang()){
						s.setShuliang(s.getShuliang()-Integer.parseInt(arr[1]));
						s.setShuliang1(s.getShuliang1()+Integer.parseInt(arr[1]));
						b=false;
						System.out.println("销售成功.");
						break;
					}
				}
				if(b){
					System.out.println("销售失败.");
				}
			}else if(sum==4){
				for(Shopping sp:list){
					sp.info();
				}
			}else if(sum==5){
				long a = 0;
				for(Shopping s:list){
					s.xse();
					a=a+s.getZzonge();
				}
				System.out.println("销售总额为："+a+".");
			}else if(sum==6){
				for(Shopping s:list){
					s.jr();
				}
			}else if(sum==7){
				System.out.println("退出系统.");
				break;
			}else{
				System.out.println("对不起,您输入的数字有误,请重新输入.");				
			}
			
		}
		
	}

}
