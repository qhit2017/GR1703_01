package com.wan;

import java.util.Scanner;

public class Y5 {
	//从键盘接收两个数，输出较大的那个数
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int i=sc.nextInt();
		int j=sc.nextInt();
		if(i>j){
			System.out.println(i);
		}if(j>i){
			System.out.println(j);
		}
	}

}
