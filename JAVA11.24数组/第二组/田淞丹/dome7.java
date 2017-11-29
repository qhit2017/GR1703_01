package com.suzhu;

import java.util.Scanner;

public class dome7 {
// 从键盘输入10个数，将第2个与第6个交换，第4个与第8个交换，输出原来的10个数，以及交换后的10个数
	
		public static void main(String[] args) {
			Scanner sc=new Scanner(System.in);
			int []arr=new int[10];
			for(int i=0;i<arr.length;i++){
				System.out.println("请输入第"+(i+1)+"数");
			arr[i]=sc.nextInt();
			}
			System.out.println("正着输出");
			for(int i=0;i<arr.length;i++){
				System.out.print(arr[i]+"  ");
			}
			
			
			System.out.println("输出交换后的数");
			int a=0; 
			a=arr[1];
			arr[1]=arr[5];
			arr[5]=a;
			
			int b=0;
			b=arr[3];
			arr[3]=arr[7];
			arr[7]=b;
		for(int j=0;j<arr.length;j++){
			System.out.print(arr[j]+" ");
		}
			
			
		}
}
