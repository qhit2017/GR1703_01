package com.kaoshijuan1;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Yi {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		List<Er>jihe=new ArrayList<Er>();
		San k=new Si();
		while(true){
			System.out.println("请输入：1：录入考试信息；2：查询所有学生；3：进入子菜单；4：退出");
			int i=sc.nextInt();
			if(i==1){
			k.yi(jihe, sc);
			}else if(i==2){
				k.er(jihe);
			}else if(i==3){
				k.san(jihe, sc);
			}else if(i==4){
				System.out.println("已退出程序！");
				break;
			}
			
		}
	}
}
		


