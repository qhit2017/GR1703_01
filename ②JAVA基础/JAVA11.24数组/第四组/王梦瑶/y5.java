package com.wangmengyao;

import java.util.Scanner;

public class y5 {
	//从键盘输入10个数，输出后5个数
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("输入10个数");
		int [] arr=new int[10];
		for(int t=0;t<arr.length;t++){
			System.out.println("输入第"+(t+1)+"数");
			arr[t]=sc.nextInt();
		}
		System.out.println("输出后5个数");
		for(int i=5;i<arr.length;i++){
			System.out.print(arr[i]+"\t");
		}
	}

}
