package com.lizhixin;

import java.util.Scanner;
//�Ӽ�������10�����������5����
public class HomeWork05 {
	public static void main(String[] args) {
		
		int[] arr= new int[10];
		Scanner sc =new Scanner(System.in);
		for(int i=1;i<=arr.length;i++){
			System.out.println("�������"+i+"������");
		 arr[i-1]=sc.nextInt();
		}
		System.out.println("�������Ϊ��");
		for(int j=1;j<=arr.length;j++){
			if(j>=5)
			System.out.print(arr[j-1]+"\t");
		
	}

	}
}
