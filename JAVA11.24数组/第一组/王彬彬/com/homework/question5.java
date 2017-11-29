package com.homework;

import java.util.Scanner;

/*
 * 5 从键盘输入10个数，输出后5个数
 */
public class question5 {

	public static void main(String[] args) {
		
		Scanner sc= new Scanner(System.in);
		int arr[]=new int[10];
		for(int a = 0;a<arr.length;a++){
			System.out.println("请输入第"+(a+1)+"个数");
			arr[a]=sc.nextInt();
		}
		for(int a = 5;a<arr.length;a++){
			System.out.println(arr[a]);
		}
		
		
		
		
		
		
		
		
	}
	
}
