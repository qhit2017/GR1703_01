package com.wangwendi;

import java.util.Scanner;

public class zuoye3 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);

		 int[] arr = new int[10];

		  for(int i=0;i<arr.length;i++){
			System.out.println("�������"+(i+1)+"������");
			arr[i] = sc.nextInt();
		}
		  System.out.println();

		  System.out.println("ѭ������Ϊ��");

		for(int a=0;a<arr.length;a++){

			System.out.print(arr[a]+"\t");
		}
		
	}
	
}
