package com.wangwendi;

import java.util.Scanner;

public class zuoye7 {
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);  

		   int[] arr = new int[10];

		for(int a=0;a<arr.length;a++){

			System.out.println("�������"+(a+1)+"������");

			   arr[a]=sc.nextInt();
		}
		        System.out.println("ԭ������Ϊ��");

		for(int n=0;n<arr.length;n++){

			System.out.print(arr[n]+"\t");
		}
			  int i =arr[1];

			  arr[1]=arr[5];

			  arr[5]=i;
			
			   i=arr[3];

			arr[3]=arr[7];

			arr[7]=i;
 
		       System.out.println();

		       System.out.println("������Ϊ��");

		for(int n=0;n<arr.length;n++){

			System.out.print(arr[n]+"\t");
		}
			
	}

}
