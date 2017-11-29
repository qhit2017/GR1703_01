package com.lizhixin;
import java.util.Scanner;

//从键盘输入10个数，并从大到小排序
public class HomeWork06 {
	
	public static void main(String[] args) {
		
		int[] arr= new int[10];
		Scanner sc =new Scanner(System.in);
		for(int i=1;i<=arr.length;i++){
			System.out.println("请输入第"+i+"个数：");
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
			System.out.println("从大到小排序分别为：");
		for(int i=0;i<arr.length;i++){
			System.out.print(+arr[i]+"\t");
		}
		
	}

}

