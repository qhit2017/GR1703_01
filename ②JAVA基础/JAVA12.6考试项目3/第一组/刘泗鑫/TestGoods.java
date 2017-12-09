package com.KaoShi3;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class TestGoods {
	
	/*
	 	/*
	 模拟一个进销存系统，其业务范围包括：
1   新增商品
2   进货
3   销售
4   参看库存
5   退出功能
需求概述
1、新增商品，录入商品信息包含商品编号、名称、价格、初始数量
2、进货，输入商品编号和数量，如有此编号商品，则增加相应数量，如没有则显示进货失败。
3、销售，输入商品编号和数量，如有此编号商品且商品数量大于销售数量，则减少相应数量，否则显示销售失败。
4、参看库存可以显示所有商品信息包含商品编号、名称、价格、数量
5、退出功能可以退出系统

	 */
	 
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		List<Goods> list = new ArrayList<Goods>();
		List<Goods> a = new ArrayList<Goods>();
		List<Goods> b = new ArrayList<Goods>();
		
		while(true){
			System.out.println("1.新增商品  2.进货  3.销售  4.参看库存  5.查看进货账单  6.查看销售账单  7.退出功能");
			int n=sc.nextInt();
			if(n==1){
				System.out.println("添加商品,请输入:商品编号,商品名字,价格,商品数量");
				String str = sc.next();
				String[] arr = str.split(",");
				Goods g = new Goods();
				g.setNumbering(arr[0]);
				g.setName(arr[1]);
				g.setPrice(Double.parseDouble(arr[2]));
				g.setCount(Integer.parseInt(arr[3]));
				list.add(g);
				System.out.println("添加成功！");
			}else if(n==2){
				System.out.println("进货,请输入:商品编号,进货数量");
				String str = sc.next();
				String[] arr = str.split(",");
				boolean q =true;
				for(Goods g:list){
					if(arr[0].equals(g.getNumbering())){
						g.setCount(g.getCount()+Integer.parseInt(arr[1]));
						q=false;
						System.out.println("进货成功,进货:"+Integer.parseInt(arr[1])+",现有:"+g.getCount());
						g.setJinhuo(Integer.parseInt(arr[1]));
						a.add(g);
						break;
					}
				}
				if(q){
					System.out.println("进货失败！");
				}
			}else if(n==3){
				System.out.println("销售,请输入:商品编号,销售数量");
				String str = sc.next();
				String[] arr = str.split(",");
				boolean q =true;
				for(Goods g:list){
					if(arr[0].equals(g.getNumbering())){
						g.setCount(g.getCount()-Integer.parseInt(arr[1]));
						q=false;
						System.out.println("销售成功,销售:"+Integer.parseInt(arr[1])+",现有:"+g.getCount());
						g.setXiaoshou(Integer.parseInt(arr[1]));
						b.add(g);
						break;
					}
				}
				if(q){
					System.out.println("进货失败！");
				}
			}else if(n==4){
				System.out.println("查询库存");
				for(Goods g:list){
					g.info();
				}
				System.out.println("查询成功！");
			}else if(n==5){
				System.out.println("查询进货账单");
				for(Goods g:a){
					g.jinhuo();
				}
				System.out.println("查询成功！");
				
			}else if(n==6){
				System.out.println("查询销售账单");
				for(Goods g:b){
					g.xiaoshou();
				}
				System.out.println("查询成功！");
			}else if(n==7){
				System.out.println("本次服务结束");
				break;
			}else{
				System.out.println("您输入的格式不规范,请从新输入！");
			}
		}
		
	}

}
