package com.zuoye;

import java.util.Scanner;

public class zuoye5 {
	public static void main(String[] args) {
		/*
		 * �Ӽ�������10�����������5����
		 */
		Scanner  sc = new Scanner(System.in);
		int[] arr = new int[10];
		for(int a=0;a<arr.length;a++){
			System.out.println("�������"+(a+1)+"����");
			arr[a]=sc.nextInt();
		}
		for(int b=5;b<arr.length;b++){
			System.out.println(arr[b]);
		}
		
		
	}
	
	
	
	

}
