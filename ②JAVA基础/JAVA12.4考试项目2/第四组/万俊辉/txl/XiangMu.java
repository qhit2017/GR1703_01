package com.txl;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class XiangMu {
	
	public static void main(String[] args) {
		
		List<Txl> list = new ArrayList<Txl>();
		Scanner sc = new Scanner(System.in);
		Jiekou a = new Fangfa();
		while(true){
			System.out.println("1.录入信息 2.显示所有用户信息 3.姓名搜索 4.性别搜索 5.电话搜索 6.退出");
			int sum = sc.nextInt();
			if(sum==1){
				a.cunchu(list, sc);
			}else if(sum==2){
				a.bianli(list);
			}else if(sum==3){
				a.xingming(list, sc);
			}else if(sum==4){
				a.xingbie(list, sc);
			}else if(sum==5){
				a.shoujihao(list, sc);
			}else if(sum==6){
				System.out.println("谢谢使用！");
				break;
			}else{
				System.out.println("对不起，您输入的有误，请重新输入。");
			}
		}
		
	}

}
