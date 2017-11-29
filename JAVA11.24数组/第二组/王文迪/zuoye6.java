package com.wangwendi;

import java.util.Scanner;

public class zuoye6 {
	
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in); 

		int[] arr = new int[10];

		for(int i=0;i<arr.length;i++){

			System.out.println("请输入第"+(i+1)+"个数：");

			arr[i]=sc.nextInt();
		}

		for(int a=0;a<arr.length-1;a++){

			for(int b=a+1;b<arr.length;b++){

				if(arr[a]<arr[b]){

					int c=arr[a];

					arr[a]=arr[b];

					arr[b]=c;
				}
			}
		}
		for(int a=0;a<arr.length;a++){

			System.out.print(arr[a]+"\t");
		}
		
	}

}
