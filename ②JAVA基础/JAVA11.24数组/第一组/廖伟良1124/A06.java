package com.arrays;

import java.util.Scanner;

public class A06 {
	/*
	 * 从键盘输入10个数，并从大到小排序
	 */
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int[]arr = new int[10];
		for(int i =1;i<=10;i++){
			System.out.println("请输入第"+i+"个数：");
			arr[i-1]=sc.nextInt();
		}
		for(int i =0;i<arr.length-1;i++){
			for(int j=i+1;j<arr.length;j++){
				if(arr[i]<arr[j]){
					int t = arr[i];
					arr[i] = arr[j];
					arr[j] = t;
				}
			}
		}
		System.out.println("从大到小排列:");
		for(int i =0;i<arr.length;i++){
			System.out.print(arr[i]+" ");
		}
	}
}

