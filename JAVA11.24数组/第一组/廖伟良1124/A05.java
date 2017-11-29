package com.arrays;

import java.util.Scanner;

public class A05 {
	/*
	 * 从键盘输入10个数，输出后5个数
	 */
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int[]arr = new int[10];
		for(int i =1;i<=10;i++){
			System.out.println("请输入第"+i+"个数：");
			arr[i-1]=sc.nextInt();
		}
		for(int i =0;i<arr.length;i++){
			if(i>=5){
				System.out.print(arr[i]+" ");
			}
		}
	}
}

