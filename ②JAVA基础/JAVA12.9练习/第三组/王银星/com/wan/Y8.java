package com.wan;

import java.util.Scanner;

public class Y8 {
	//从键盘接收数字n，输出1~n之间所有后一位比前一位大1的数  比如：12,123,234,78,789等
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("请输入数字n：");
		int n=sc.nextInt();
		out:for(int i=12;i<=n;i++){
			for(int c=i;c>=10;c=c/10){
				if(c%10-c/10%10!=1){
					continue out;
				}
			}
			System.out.println(i);
		}
		
		
	}

}
