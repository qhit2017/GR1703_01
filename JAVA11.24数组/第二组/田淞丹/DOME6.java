package com.suzhu;

import java.util.Scanner;

public class DOME6 {
//	 �Ӽ�������10���������Ӵ�С����
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int []arr= new int [10];
		for(int i=1;i<=arr.length;i++){
			System.out.println("�������"+i+"����");
			arr[i-1]=sc.nextInt();
			}
			for(int i=0;i<arr.length;i++){
			for(int j=i+1;j<arr.length;j++){
				if(arr[i]<arr[j]){
					int t=arr[i];
					arr[i]=arr[j];
					arr[j]=t;
				}
				
			}
		}
		for(int i=0;i<arr.length-1;i++){
			System.out.print("�Ӵ�С����ֱ�Ϊ��"+arr[i]+"\t");
			
		}
			
	}
}
