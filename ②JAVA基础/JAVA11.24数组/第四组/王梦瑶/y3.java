package com.wangmengyao;

import java.util.Scanner;

public class y3 {
	//�Ӽ��̽���10�����������������У�Ȼ��ѭ�����������е�Ԫ��
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int [] arr=new int[10];
		for(int t=1;t<=arr.length;t++){
			System.out.println("�����"+t+"����");
			arr[t-1]=sc.nextInt();
		}
		for(int i=0;i<arr.length;i++){
			System.out.print(arr[i]+"\t");
		}
	}

}
