package com.arrays;

import java.util.Scanner;

public class A05 {
	/*
	 * �Ӽ�������10�����������5����
	 */
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int[]arr = new int[10];
		for(int i =1;i<=10;i++){
			System.out.println("�������"+i+"������");
			arr[i-1]=sc.nextInt();
		}
		for(int i =0;i<arr.length;i++){
			if(i>=5){
				System.out.print(arr[i]+" ");
			}
		}
	}
}

