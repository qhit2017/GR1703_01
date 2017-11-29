package com.homework;

import java.util.Scanner;

/*
 * 7 从键盘输入10个数，将第2个与第6个交换，第4个与第8个交换，输出原来的10个数，以及交换后的10个数
 */
public class question7 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		int arr[]=new int[10];
		for(int a=0;a<arr.length;a++){
			System.out.println("请输入第"+(a+1)+"个数");
			arr[a]=sc.nextInt();
		}
		System.out.println("原来");
		for(int a =0;a<arr.length;a++){
			System.out.print(arr[a]+" ");
		}
		System.out.println();
		System.out.println("现在");
		
		for(int i=1;i<=3;i=i+2){
			int t=arr[i];
			arr[i]=arr[i+4];
			arr[i+4]=t;
		}
		for(int a =0;a<arr.length;a++){
			System.out.print(arr[a]+" ");
		}
		
		
		
		
		
		
		
		
		
		
	}
	
}
