package com.homework;

import java.util.Scanner;

/*
 * 7 �Ӽ�������10����������2�����6����������4�����8�����������ԭ����10�������Լ��������10����
 */
public class question7 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		int arr[]=new int[10];
		for(int a=0;a<arr.length;a++){
			System.out.println("�������"+(a+1)+"����");
			arr[a]=sc.nextInt();
		}
		System.out.println("ԭ��");
		for(int a =0;a<arr.length;a++){
			System.out.print(arr[a]+" ");
		}
		System.out.println();
		System.out.println("����");
		
		for(int i=1;i<=3;i=i+2){
			int t=arr[i];
			arr[i]=arr[i+4];
			arr[i+4]=t;
		}
		for(int a =0;a<arr.length;a++){
			System.out.print(arr[a]+" ");
		}
		
		
		
		
		
		
		
		
		
		
	}
	
}
