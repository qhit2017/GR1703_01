package com.lizhixin;

import java.util.Scanner;
//从键盘输入10个数，将第2个与第6个交换，第4个与第8个交换，输出原来的10个数，以及交换后的10个数
public class HomeWork07 {
	public static void main(String[] args) {
		
		int[] arr= new int[10];
		Scanner sc =new Scanner(System.in);
		for(int i=1;i<=arr.length;i++){
			System.out.println("请输入第"+i+"个数：");
		 arr[i-1]=sc.nextInt();
		}
		System.out.println("原来输出的十个数为：");
		for(int j=1;j<=arr.length;j++){
			System.out.print(arr[j-1]+"\t");
		}
		System.out.println();
		System.out.println("交换过之后输出的十个数为：");
		for(int j=1;j<=arr.length;j++){
			if(j==5){
				int t=arr[1];
				arr[1]=arr[j];
				arr[j]=t;
			}if(j==7){
				int x=arr[3];
				arr[3]=arr[j];
				arr[j]=x;
			}
		}
		for(int j=1;j<=arr.length;j++){
			System.out.print(arr[j-1]+"\t");
		}
		
	}

}
