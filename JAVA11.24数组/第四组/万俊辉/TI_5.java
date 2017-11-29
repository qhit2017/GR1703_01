package com.Wjh;

import java.util.Scanner;

public class TI_5 {
	
	public static void main(String[] args) {
		
	Scanner sc = new Scanner(System.in);
	int[] arr = new int[10];
	for(int i=0;i<arr.length;i++){
		System.out.println("请输入第"+(i+1)+"个数：");
		arr[i]=sc.nextInt();
	}
	for(int a=5;a<arr.length;a++){
		System.out.print(arr[a]+"\t");
	}
	
	}

}
