package com.suzhu;

import java.util.Scanner;

public class DOME6 {
//	 从键盘输入10个数，并从大到小排序
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int []arr= new int [10];
		for(int i=1;i<=arr.length;i++){
			System.out.println("请输入第"+i+"个数");
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
			System.out.print("从大到小排序分别为："+arr[i]+"\t");
			
		}
			
	}
}
