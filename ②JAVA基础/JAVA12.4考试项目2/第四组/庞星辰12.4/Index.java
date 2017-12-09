package com.KaoShi;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Index {

	public static void main(String[] args) {
		Realize j = new Realize();
		Scanner sc = new Scanner(System.in);
		List<AddressList> list = new ArrayList<AddressList>();
		while(true){
			System.out.println("1.录入通讯录信息2.显示所有通讯录信息3.按姓名搜索4.按性别搜索5.按电话搜索6.退出功能");
			int a = sc.nextInt();
			if(a==1){
//				System.out.println("添加通讯录信息   例如：张三,男,188");
//				AddressList a1 = new AddressList();
//				String str = sc.next();
//				String[] arr = str.split(",");
//				a1.setName(arr[0]);
//				a1.setSex(arr[1].charAt(0));
//				a1.setDianhua(arr[2]);
//				list.add(a1);
//				System.out.println("保存成功");
				j.addto(list, sc);
				
			}else if(a==2){
//				System.out.println("显示所有通讯录信息");
//				for(AddressList i:list){
//					i.info();
//				}
				j.xianshisuoyou(list);
				
			}else if(a==3){
//				System.out.println("按姓名搜索");
//				String name = sc.next();
//				for(AddressList i:list){
//					if(name.equals(i.getName())){
//						i.info();
//					}
//				}
				j.queryName(list, sc);
			}else if(a==4){
//				System.out.println("按性别搜索");
//				String sex = sc.next();
//				for(AddressList i:list){
//					if(sex.charAt(0)==i.getSex()){
//						i.info();
//					}
//				}
				j.querySex(list, sc);
				
			}else if(a==5){
//				System.out.println("按电话搜索");
//				String dianhua = sc.next();
//				for(int s=0;s<list.size();s++){
//					AddressList i=list.get(s);
//					if(dianhua.equals(i.getDianhua())){
//						i.info();
//					}
//					
//				}
				j.queryDianhua(list, sc);
				
			}else if(a==6){
				System.out.println("6.查询结束");
				break;
			}
			
			
			
			
			
			
			
		}
		
		
		
		
		
		
		
		
	}
	
	
	
	
	
	
	
}
