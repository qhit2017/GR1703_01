package com.procedure;

import java.util.ArrayList;
import java.util.Scanner;

public class Demo1 {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		ArrayList<Demo>list=new ArrayList<Demo>();
		while(true){
			System.out.println("1，新增商品 2，进货 3，销售 4，查看库存 5，退出功能");
			int n=sc.nextInt();
			if(n==1){
				System.out.println("新增商品 格式例如：方便面，编号：115，价格：1 数量：100");
				String str=sc.next();
				String[]arr=str.split(",");
				Demo a=new Demo();
				a.setName(arr[0]);
				a.setBianhao(arr[1]);
				a.setJiage(Integer.parseInt(arr[2]));
				a.setShuliang(Integer.parseInt(arr[3]));
				list.add(a);
				System.out.println("商品添加成功");
			}else if(n==2){
				System.out.println("进货 格式是商品编号加数量   如果库存没有该货物，则进货失败");
				String str=sc.next();
				String[]arr=str.split(",");
				
				String bianhao=arr[0];
				int shuliang=Integer.parseInt(arr[1]);
				boolean flag=true;
				for(Demo x:list){
					if(x.equals(x.getBianhao())){
						x.setShuliang(x.getShuliang()+shuliang);
						flag=false;
						System.out.println("添加成功");
						break;
					}
				}
				if(flag){
					System.out.println("添加失败");
				}
				
				
			}else if(n==3){
				System.out.println("销售 格式是输入编号和数量  如果库存足够，销售成功，如果不够，销售失败");
				String str=sc.next();
				String[]arr=str.split(",");
				
				String bianao=arr[0];
				int shuliang=Integer.parseInt(arr[1]);
				boolean flag=true;
				for(Demo x:list){
					if(x.equals(x.getBianhao())&&shuliang<=x.getShuliang()){
						x.setShuliang(x.getShuliang()-shuliang);
						flag=false;
						System.out.println("销售成功");
						break;
					}
				}
				if(flag){
					System.out.println("销售失败");
				}
				
			}else if(n==4){
				for(Demo x:list){
					x.info();
				}
				
			}else if(n==5){
				break;
			}else{
				System.out.println("您输入的参数有误");
			}
		}
		
		
	}

}
