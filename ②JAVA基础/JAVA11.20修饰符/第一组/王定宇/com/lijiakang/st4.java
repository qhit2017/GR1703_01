package com.lijiakang;

import java.util.Scanner;

/*4 从键盘输入1~7的数字，如果数字是1，则输出星期一，如果数
 * 字是2，则输出星期二........如果数字是7,则输出星期
 * 日(用switch)*/
public class st4 {
			public static void main(String[] args) {
				Scanner sc = new Scanner(System.in);
				System.out.println("请输入1~7:");
				int i = sc.nextInt();
				
				switch(i){
				case 1:{
					System.out.println("星期一");break;
				}
				case 2:{
					System.out.println("星期二");break;
				}
				case 3:{
					System.out.println("星期三");break;
				}
				case 4:{
					System.out.println("星期四");break;
				}
				case 5:{
					System.out.println("星期五");break;
				}
				case 6:{
					System.out.println("星期六");break;
				}
				case 7:{
					System.out.println("星期日");break;
				}
				}
			}
}
