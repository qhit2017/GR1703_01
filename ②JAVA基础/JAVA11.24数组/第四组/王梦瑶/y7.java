package com.wangmengyao;

import java.util.Scanner;

public class y7 {
	//从键盘输入10个数，将第2个与第6个交换，第4个与第8个交换，输出原来的10个数，以及交换后的10个数
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int [] arr=new int[10];
		for(int t=0;t<arr.length;t++){
			System.out.println("输入第"+(t+1)+"数");
			arr[t]=sc.nextInt();
		}
		System.out.println("输出原来的10个数");
		for(int i=0;i<arr.length;i++){
			System.out.print(arr[i]+"\t");
		}
		System.out.println("\n"+"交换之后的10个数");
		int k=arr[1];
		arr[1]=arr[5];
		arr[5]=k;
		int h=arr[3];
		arr[3]=arr[7];
		arr[7]=h;
		for(int j=0;j<arr.length;j++){
			System.out.print(arr[j]+"\t");
		}
	}

}
