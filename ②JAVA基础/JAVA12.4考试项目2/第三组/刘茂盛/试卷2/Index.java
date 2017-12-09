package com.Test;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Index {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		List<MailList>list=new ArrayList<MailList>();
		MailListIservice service=new MailListIserviceImpl();
		while(true){
			System.out.println("请按键1录入通讯录2显示所有通讯录3姓名搜索4性别搜索5电话搜索6退出程序");
			int n=sc.nextInt();
			if(n==1){
				service.tianjia(list, sc);
			}else if(n==2){
				service.findall(list, sc);
			}else if(n==3){
				service.findname(list, sc);
			}else if(n==4){
				service.findsex(list, sc);
			}else if(n==5){
				service.findnum(list, sc);
			}else if(n==6){
				System.out.println("退出程序");
				break;
			}else {
				System.out.println("您输入的数字不规范！");
			}
		}
	}

}
