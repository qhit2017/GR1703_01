package com.lizhixin;

import java.util.Scanner;

//�Ӽ��̽���10�����������������У�Ȼ��ѭ�����������е�Ԫ��
public class HomeWork03 {
	public static void main(String[] args) {
		int[] arr= new int[10];
		Scanner sc =new Scanner(System.in);
		for(int i=1;i<=arr.length;i++){
			System.out.println("�������"+i+"������");
		 arr[i-1]=sc.nextInt();
		}
		for(int j=1;j<=arr.length;j++){
			System.out.print(arr[j-1]+"\t");
		}
		
		}
		
	}

