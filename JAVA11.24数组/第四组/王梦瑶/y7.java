package com.wangmengyao;

import java.util.Scanner;

public class y7 {
	//�Ӽ�������10����������2�����6����������4�����8�����������ԭ����10�������Լ��������10����
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int [] arr=new int[10];
		for(int t=0;t<arr.length;t++){
			System.out.println("�����"+(t+1)+"��");
			arr[t]=sc.nextInt();
		}
		System.out.println("���ԭ����10����");
		for(int i=0;i<arr.length;i++){
			System.out.print(arr[i]+"\t");
		}
		System.out.println("\n"+"����֮���10����");
		int k=arr[1];
		arr[1]=arr[5];
		arr[5]=k;
		int h=arr[3];
		arr[3]=arr[7];
		arr[7]=h;
		for(int j=0;j<arr.length;j++){
			System.out.print(arr[j]+"\t");
		}
	}

}
