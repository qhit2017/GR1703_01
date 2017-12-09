package com.WJH;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Shixian {
	
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		List<Fengzhuang> list = new ArrayList<Fengzhuang>();
		DDDDDD d = new Fangfa();
		while(true){
			System.out.println("1.录入高考成绩\t2.显示所有考生信息\t3.查询最高分\t4.退出\n请输入");
			int i = sc.nextInt();
			if(i==1){
				d.one(list, sc);
			}else if(i==2){
				d.two(list);
			}else if(i==3){
				d.three(list, sc);
			}else if(i==4){
				System.out.println("谢谢使用!");
				break;
			}else{
				System.out.println("对不起，输入有误，请重新输入。");
			}
			
		}
	}

}
