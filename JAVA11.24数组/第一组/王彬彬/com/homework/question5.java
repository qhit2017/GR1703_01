package com.homework;

import java.util.Scanner;

/*
 * 5 �Ӽ�������10�����������5����
 */
public class question5 {

	public static void main(String[] args) {
		
		Scanner sc= new Scanner(System.in);
		int arr[]=new int[10];
		for(int a = 0;a<arr.length;a++){
			System.out.println("�������"+(a+1)+"����");
			arr[a]=sc.nextInt();
		}
		for(int a = 5;a<arr.length;a++){
			System.out.println(arr[a]);
		}
		
		
		
		
		
		
		
		
	}
	
}
