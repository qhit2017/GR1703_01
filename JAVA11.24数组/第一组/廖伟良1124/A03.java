package com.arrays;

import java.util.Scanner;

public class A03 {
	/*
	 * �Ӽ��̽���10�����������������У�Ȼ��ѭ�����������е�Ԫ��
	 */
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		   int arr[] = new int[10];
	        for (int i=1; i <=10; i++) {
	        	System.out.println("�������"+i+"������");
	        	arr[i-1]=sc.nextInt();
	        }
	        for(int i=0;i<arr.length;i++){
	    		System.out.print(arr[i]+" ");
	    	}
	  }
}
