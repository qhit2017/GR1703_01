package com.lizhixin;

import java.util.Scanner;
//�Ӽ�������10����������2�����6����������4�����8�����������ԭ����10�������Լ��������10����
public class HomeWork07 {
	public static void main(String[] args) {
		
		int[] arr= new int[10];
		Scanner sc =new Scanner(System.in);
		for(int i=1;i<=arr.length;i++){
			System.out.println("�������"+i+"������");
		 arr[i-1]=sc.nextInt();
		}
		System.out.println("ԭ�������ʮ����Ϊ��");
		for(int j=1;j<=arr.length;j++){
			System.out.print(arr[j-1]+"\t");
		}
		System.out.println();
		System.out.println("������֮�������ʮ����Ϊ��");
		for(int j=1;j<=arr.length;j++){
			if(j==5){
				int t=arr[1];
				arr[1]=arr[j];
				arr[j]=t;
			}if(j==7){
				int x=arr[3];
				arr[3]=arr[j];
				arr[j]=x;
			}
		}
		for(int j=1;j<=arr.length;j++){
			System.out.print(arr[j-1]+"\t");
		}
		
	}

}
