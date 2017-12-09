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
			System.out.println("请按键：1 新增商品2进货3销售4参看库存5进货记录6销售金额7退出");
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
				System.out.println("退出！");
				break;
			}else{
				System.out.println("请按提示输入！");
			}
		}
	}

}
