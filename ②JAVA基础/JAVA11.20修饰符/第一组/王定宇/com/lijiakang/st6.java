package com.lijiakang;

import java.util.Scanner;

public class st6 {
			public static void main(String[] args) {
				Scanner sc = new Scanner(System.in);
				System.out.println("请输入一个数字：");
				int i = sc.nextInt();
				
				if(i>0){
					System.out.println("正数");
				}else if(i<0){
					System.out.println("负数");
				}else {
					System.out.println("既不是正数也不是负数");
				}
			
			}
}
