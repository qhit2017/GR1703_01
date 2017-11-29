package com.zuoye;

import java.util.Scanner;

public class zuoye5 {
	public static void main(String[] args) {
		/*
		 * 从键盘输入10个数，输出后5个数
		 */
		Scanner  sc = new Scanner(System.in);
		int[] arr = new int[10];
		for(int a=0;a<arr.length;a++){
			System.out.println("请输入第"+(a+1)+"个数");
			arr[a]=sc.nextInt();
		}
		for(int b=5;b<arr.length;b++){
			System.out.println(arr[b]);
		}
		
		
	}
	
	
	
	

}
