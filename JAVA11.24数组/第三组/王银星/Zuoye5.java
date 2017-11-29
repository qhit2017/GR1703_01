package com.zuoye;

import java.util.Scanner;

public class Zuoye5 {
	/*
	 * 5 从键盘输入10个数，输出后5个数
	 */
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int []sz=new int [10];
		for(int i=0;i<sz.length;i++){
			System.out.println("请输入第"+(i+1)+"个数：");
			sz[i]=sc.nextInt();
		}
		for(int j=sz.length-1;j>=sz[5];j--){
			System.out.println(sz[j]);
		}
		
		
		
	}

}
