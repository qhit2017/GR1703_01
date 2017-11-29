package com.wangmengyao;

import java.util.Scanner;

public class y3 {
	//从键盘接受10个数，并存入数组中，然后循环遍历数组中的元素
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int [] arr=new int[10];
		for(int t=1;t<=arr.length;t++){
			System.out.println("输入第"+t+"个数");
			arr[t-1]=sc.nextInt();
		}
		for(int i=0;i<arr.length;i++){
			System.out.print(arr[i]+"\t");
		}
	}

}
