package com.wan;

import java.util.Scanner;

public class Y28 {
	//从键盘输入一个数，判断它是几位数；
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int i=sc.nextInt();
		int s=1;
		while(true){
			if(i>=10){
				s++;
				i=i/10;
			}else {
				break;
			}
		}
		System.out.println(s);
		
		
		
	}

}
