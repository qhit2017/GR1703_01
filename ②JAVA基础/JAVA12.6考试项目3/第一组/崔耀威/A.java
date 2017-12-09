package com.work;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class A {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		List<Ect> ect =new ArrayList<Ect>();
		
		while(true){
			System.out.println("1.新增商品 2.进货 3.销售 4.参看库存 5.退出功能");
			int num=sc.nextInt();
			if(num==1){
				System.out.println("新增商品，录入商品信息包含商品编号、名称、价格、初始数量 如: 001,面条,6,100");
				String str =sc.next();
				String[] arr =str.split(",");
				
				Ect e =new Ect();
				e.setBianhao(arr[0]);
				e.setName(arr[1]);
				e.setJiage(Double.parseDouble(arr[2]));
				e.setShuliang(Integer.parseInt(arr[3]));
				
				ect.add(e);
				System.out.println("保存成功,库存数量:"+e.getShuliang());
					
			}else if(num==2){
				System.out.println("进货，输入商品编号和数量 如: 001,50");
				String str =sc.next();
				String[] arr =str.split(",");
				
				String bianhao =arr[0];
				int shuliang=Integer.parseInt(arr[1]);
				
				boolean flag =true;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
				
				for(Ect e:ect){
					if(e.getBianhao().equals(bianhao)){
						e.setShuliang(e.getShuliang()+shuliang);
						
						flag = false;
						System.out.println("进货成功，当前库存:"+e.getShuliang());
						break;
					}
				}
				if(flag){
					System.out.println("进货失败");
				}
			
			}else if(num==3){
				System.out.println("销售，输入商品编号和数量 如: 001,10");
				String str =sc.next();
				String[] arr =str.split(",");
				
				String bianhao =arr[0];
				int shuliang =Integer.parseInt(arr[1]);
				
				boolean flag =true;
				
				for(Ect e:ect){
					if(e.getBianhao().equals(bianhao) &&  shuliang<e.getShuliang()){
						e.setShuliang(e.getShuliang()-shuliang);
						flag = false;
						System.out.println("销售成功，当前库存:"+e.getShuliang());
						break;
					}
				}
				if(flag){
					System.out.println("销售失败");
				}
				
			}else if(num==4){
				
				for(Ect e:ect){
					e.info();
				}
				
			}else if(num==5){
				System.out.println("程序运行结束");
				break;
				
			}else{
				System.out.println("您输入的数字不规范，请再次输入");
			}
		}
		
		
		
	}
}
