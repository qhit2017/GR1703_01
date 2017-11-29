package com.suzhu;

import java.util.Scanner;
//3 从键盘接收10个数，并存入数组中，然后循环遍历数组中的元素
public class dome3 {
public static void main(String[] args) {
	Scanner sc=new Scanner(System.in);
		int []arr=new int[10];
			for( int i =1; i<arr.length;i++){
			System.out.println("请你输入第"+i+"个数");
			arr[i-1]= sc.nextInt();
	}
		for(int i =0;i<arr.length;i++){
			System.out.println(arr[i]);
}
}
}
