package com.lizhixin;
import java.util.Scanner;

//�Ӽ�������10���������Ӵ�С����
public class HomeWork06 {
	
	public static void main(String[] args) {
		
		int[] arr= new int[10];
		Scanner sc =new Scanner(System.in);
		for(int i=1;i<=arr.length;i++){
			System.out.println("�������"+i+"������");
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
			System.out.println("�Ӵ�С����ֱ�Ϊ��");
		for(int i=0;i<arr.length;i++){
			System.out.print(+arr[i]+"\t");
		}
		
	}

}

