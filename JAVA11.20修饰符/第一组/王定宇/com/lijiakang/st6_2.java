package com.lijiakang;

import java.util.Scanner;

public class st6_2 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("请输入第一个小数：");
		double i = sc.nextDouble();
		System.out.println("请输入第二个小数：");
		double j = sc.nextDouble();
		
		if(i>j){
			System.out.println("第一个数比第二个数大");
		}else if(i==j){
			System.out.println("两个数一样大");
		}else{
			System.out.println("第二个数比第一个大");
		}
	}
}
