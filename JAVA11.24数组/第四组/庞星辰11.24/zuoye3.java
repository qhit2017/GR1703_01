package com.zuoye;

import java.util.Scanner;

public class zuoye3 {
	public static void main(String[] args) {
		/*
		 *  从键盘接收10个数，并存入数组中，然后循环遍历数组中的元素
		 */
		Scanner sc = new Scanner(System.in);
		int[] arr = new int[10];
		
		for(int a =0;a<arr.length;a++){
		System.out.println("输入第"+(a+1)+"个数");	
		arr[a]=sc.nextInt();
		}
		
		
		
	}
	
	
	
	
	
	

}
