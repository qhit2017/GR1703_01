package com.homework;

import java.util.Scanner;

/*
 * 3 �Ӽ��̽���10�����������������У�Ȼ��ѭ�����������е�Ԫ��
 */
public class question3 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		int arr[]=new int[10];
		
		for(int a = 0;a<arr.length;a++){
			System.out.println("�������"+(a+1)+"����");
			arr[a]=sc.nextInt();
		}
		for(int i=0;i<arr.length;i++){
			System.out.print(arr[i]+"  ");
		}
		
		
		
		
		
		
		
		
	}
	
}
