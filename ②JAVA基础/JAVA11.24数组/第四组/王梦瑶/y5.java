package com.wangmengyao;

import java.util.Scanner;

public class y5 {
	//�Ӽ�������10�����������5����
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("����10����");
		int [] arr=new int[10];
		for(int t=0;t<arr.length;t++){
			System.out.println("�����"+(t+1)+"��");
			arr[t]=sc.nextInt();
		}
		System.out.println("�����5����");
		for(int i=5;i<arr.length;i++){
			System.out.print(arr[i]+"\t");
		}
	}

}
