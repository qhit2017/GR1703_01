package com.zuoye;

import java.util.Scanner;

public class Zuoye3 {
	/*3 从键盘接收10个数，并存入数组中，然后循环输出数组中的元素
	 * 
	 */
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int[]sz=new int[10];
		for(int i=0;i<sz.length;i++){
			System.out.println("请输入第"+(i+1)+"个数：");
			sz[i]=sc.nextInt();
		}
		for(int j=0;j<sz.length;j++){
			System.out.print(sz[j]+"\t");
	}
	}

}
