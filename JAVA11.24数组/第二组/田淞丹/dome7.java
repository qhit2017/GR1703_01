package com.suzhu;

import java.util.Scanner;

public class dome7 {
// �Ӽ�������10����������2�����6����������4�����8�����������ԭ����10�������Լ��������10����
	
		public static void main(String[] args) {
			Scanner sc=new Scanner(System.in);
			int []arr=new int[10];
			for(int i=0;i<arr.length;i++){
				System.out.println("�������"+(i+1)+"��");
			arr[i]=sc.nextInt();
			}
			System.out.println("�������");
			for(int i=0;i<arr.length;i++){
				System.out.print(arr[i]+"  ");
			}
			
			
			System.out.println("������������");
			int a=0; 
			a=arr[1];
			arr[1]=arr[5];
			arr[5]=a;
			
			int b=0;
			b=arr[3];
			arr[3]=arr[7];
			arr[7]=b;
		for(int j=0;j<arr.length;j++){
			System.out.print(arr[j]+" ");
		}
			
			
		}
}
