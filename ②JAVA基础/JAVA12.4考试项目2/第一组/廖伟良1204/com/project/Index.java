package com.project;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.util.Set;

public class Index {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		List<MailList>list = new ArrayList<MailList>();
		while(true){
			System.out.println("请按键:1.录入通讯录信息2.显示所有通讯录信息3.姓名搜索4.性别搜索5.电话搜索6.退出功能");
			int numb = sc.nextInt();
			if(numb==1){
				System.out.println("请输入姓名,性别,电话号 例如:张三,男,136");
				MailList ml = new MailList();
				String str = sc.next();
				String[]arr = str.split(",");
				ml.setName(arr[0]);
				ml.setSex(arr[1].charAt(0));
				ml.setPhoneNumber(arr[2]);
				list.add(ml);
				System.out.println("添加成功!");
			}
			else if(numb==2){
				System.out.println("显示所有通讯录信息");
//				for(MailList i:list){
//					i.info();
//				}
				for(int i=0;i<list.size();i++){
					MailList ml =list.get(i);
					ml.info();
				}
			}
			else if(numb==3){
				System.out.println("请输入姓名:");
				String name = sc.next();
				for(MailList ml:list){
					if(name.equals(ml.getName())){
						ml.info();
						break;
					}
				}
			}
			else if(numb==4){
				System.out.println("请输入性别:");
				Character sex = sc.next().charAt(0);
				for(MailList ml:list){
					if(sex.equals(ml.getSex())){
						ml.info();
						break;
					}
				}
			}
			else if(numb==5){
				System.out.println("请输入电话号:");
				String phoneNumber = sc.next();
				for(MailList ml:list){
					if(phoneNumber.equals(ml.getPhoneNumber())){
						ml.info();
					}
				}
			}
			else if(numb==6){
				System.out.println("程序结束");
				break;
			}
			else{
				System.out.println("输入错误");
			}
		}
	}
}
