package com.zuoye;

import java.util.Scanner;

public class Zuoye6 {
	/*
	 * 6 �Ӽ�������10���������Ӵ�С����
	 */
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int []sz= new int[10];
		for(int i=0;i<sz.length;i++){
			System.out.println("�������"+(i+1)+"������");
			sz[i]=sc.nextInt();
		}
		for(int i=0;i<sz.length-1;i++){
			for(int j=i+1;j<sz.length;j++){
				if(sz[i]<sz[j]){
					int t=sz[i];
					sz[i]=sz[j];
					sz[j]=t;
				}
			}
		}
		for(int i=0;i<sz.length;i++){
			System.out.print(sz[i]+"\t");
		}
		
		
	}

}
