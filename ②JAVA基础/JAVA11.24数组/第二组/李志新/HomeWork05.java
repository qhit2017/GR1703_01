package com.lizhixin;

import java.util.Scanner;
//从键盘输入10个数，输出后5个数
public class HomeWork05 {
	public static void main(String[] args) {
		
		int[] arr= new int[10];
		Scanner sc =new Scanner(System.in);
		for(int i=1;i<=arr.length;i++){
			System.out.println("请输入第"+i+"个数：");
		 arr[i-1]=sc.nextInt();
		}
		System.out.println("后五个数为：");
		for(int j=1;j<=arr.length;j++){
			if(j>=5)
			System.out.print(arr[j-1]+"\t");
		
	}

	}
}
