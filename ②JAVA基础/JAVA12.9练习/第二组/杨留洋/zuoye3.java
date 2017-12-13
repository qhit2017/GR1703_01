package com.zuoye;

import java.util.Scanner;

public class zuoye3 {

	//从键盘接收两个数，输出较大的那个数  
	public static void main(String[] args) {
		
		Scanner sc=new Scanner(System.in);
		int i=sc.nextInt();
		int o=sc.nextInt();
		if(i>o){
			System.out.println(i);
		}else{
			System.out.println(o);
		}
	}
}
