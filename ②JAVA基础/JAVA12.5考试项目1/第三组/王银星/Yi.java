package com.ketang;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Yi {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		List<Er>jihe=new ArrayList<Er>();
		San s=new Si();
		while(true){
			System.out.println("1:	录入考生的高考信息；"
					+ "2	:显示所有考生信息；3:查询最高分； 4:退出");
			int sum=sc.nextInt();
			if(sum==1){
				s.yi(jihe, sc);
			}else if(sum==2){
				s.er(jihe);
			}else if(sum==3){
				s.san(jihe, sc);
			}else if(sum==4){
				System.out.println("退出！");
				break;
			}else{
				System.out.println("输入数字不规范，请重输！");
			}
		}
	}

}
