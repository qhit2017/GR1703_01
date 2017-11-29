package com.homework;

import java.util.Scanner;

/*
 * 6 从键盘输入10个数，并从大到小排序
 */
public class question6 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		int arr[]=new int[10];
		for(int a=0;a<arr.length;a++){
			System.out.println("请输入第"+(a+1)+"个数");
			arr[a]=sc.nextInt();
		}
		int max = 0;
		for(int m=0;m<arr.length-1;m++){
			for(int n=m+1;n<arr.length;n++){
				if(arr[m]<arr[n]){
					int t=arr[m];
					arr[m]=arr[n];
					arr[n]=t;
				}
			}
			
		}
		for(int i=0;i<arr.length;i++){
			System.out.print(arr[i]+" ");
		}
		
		
		
		
		
		
		
		
		
		
		
		
	}
	
}
