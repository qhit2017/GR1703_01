package com.Kaoshi2;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Index {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		List<Goods> list = new ArrayList<Goods>();
		while(true){
			System.out.println("1.新增商品2.进货3.销售4.查看库存5.退出");
			int a=sc.nextInt();
			if(a==1){
				System.out.println("新增商品  编号,名称,价格,库存数量  例如:001,桶面,5,100");
				String str = sc.next();
				Goods  g=new Goods();
				String[] arr=str.split(",");
				g.setNumber(arr[0]);
				g.setName(arr[1]);
				g.setCost(Double.parseDouble(arr[2]));
				g.setCount(Integer.parseInt(arr[3]));
				list.add(g);
				System.out.println("添加完成！");
			}else if(a==2){
				System.out.println("进货");
				String str = sc.next();
				String[] arr =str.split(",");
				String number=arr[0];
				int count=Integer.parseInt(arr[1]);
				boolean i=true;
				for(Goods g:list){
					if(number.equals(g.getNumber())){
						g.setCount(g.getCount()+count);
						System.out.println("进货成功"+g.getCount());
						i=false;
						break;
					}
				}
					if(i){
					System.out.println("进货失败");
					}
			}else if(a==3){
				System.out.println("销售");
				String str = sc.next();
				String[] arr =str.split(",");
				String number=arr[0];
				int count=Integer.parseInt(arr[1]);
				boolean i =true;
				for(Goods g:list){
					if(number.equals(g.getNumber())&& count<=g.getCount()){
						g.setCount(g.getCount()-count);
						System.out.println("销售成功"+g.getCount());
						i=false;
						break;
					}
				}
					if(i){
						System.out.println("销售失败");
					}
				
			}else if(a==4){
				System.out.println("查看库存");
				for(Goods g:list){
					g.info();
				}
			}else if(a==5){
				System.out.println("退出");
				break;
			}else{
				System.out.println("你输入的数字有误,请重新输入:");
			}
		}
		
		
		
	}
	
	
	
	
}
