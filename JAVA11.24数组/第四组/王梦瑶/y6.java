package com.wangmengyao;

import java.util.Scanner;

public class y6 {
	//从键盘输入10个数，并从大到小排序
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int [] arr=new int [10];
		for(int t=0;t<arr.length;t++){
			System.out.println("输入第"+(t+1)+"数");
			arr[t]=sc.nextInt();
		}
		for(int i=0;i<arr.length-1;i++){
			for(int j=i+1;j<arr.length;j++){
				if(arr[i]<arr[j]){
					int h=arr[j];
					arr[j]=arr[i];
					arr[i]=h;
				}
			}
			
		}
		System.out.println("从大到小排序");
		for(int k=0;k<arr.length;k++){
			System.out.print(arr[k]+"\t");
		}
	}

}
