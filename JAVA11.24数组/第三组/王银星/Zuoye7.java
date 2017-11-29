package com.zuoye;

import java.util.Scanner;

public class Zuoye7 {
	/*7 从键盘输入10个数，
	 * 将第2个与第6个交换，第4个与第8个交换，输出原来的10个数，以及交换后的10个数
	 * 
	 */
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int []sz= new int[10];
		for(int i=0;i<sz.length;i++){
			System.out.println("请输入第"+(i+1)+"个数：");
			sz[i]=sc.nextInt();
		
	}
		for(int i=0;i<sz.length;i++){
			System.out.print(sz[i]+"\t");
		}
		System.out.println();
		
		int t=sz[5];
		sz[5]=sz[1];
		sz[1]=t;
		
		int h=sz[3];
		sz[3]=sz[7];
		sz[7]=h;
		
		for(int j=0;j<sz.length;j++){
			
			System.out.print(sz[j]+"\t");
		}
		}

}
