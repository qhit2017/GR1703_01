package com.test3;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Index {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		List<Shangpin>list=new ArrayList<Shangpin>();
		List<Shangpin>list1=new ArrayList<Shangpin>();
		ShangpinIservice service=new ShangpinIserviceImp();
		while(true){
			System.out.println("�밴����1 ������Ʒ2����3����4�ο����5������¼6���۽��7�˳�");
			int n = sc.nextInt();
			if(n==1){
				service.xinzeng(list, sc);
			}else if(n==2){
				service.jinhuo(list1,list, sc);
			}else if(n==3){
				service.xiaoshou(list1,list, sc);
			}else if(n==4){
				service.findall(list, sc);
				
			}else if(n==5){
				service.jinhuojilu(list1,list, sc);
				
			}else if(n==6){
				service.xiaoshoujine(list1,list, sc);
				
			}else if(n==7){
				System.out.println("�˳���");
				break;
			}else{
				System.out.println("�밴��ʾ���룡");
			}
		}
	}

}
