package com.wan;

import java.util.Scanner;

public class Y9 {
	//从键盘接收一个3位数，求这个三位数的10位是几？
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int i=sc.nextInt();
		System.out.println((i/10)%10);
	}

}
