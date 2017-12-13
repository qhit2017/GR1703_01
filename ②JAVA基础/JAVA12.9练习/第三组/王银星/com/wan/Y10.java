package com.wan;

import java.util.Scanner;

public class Y10 {
	//从键盘接收数字n，求1~n之间能被3整除的个数
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int n=sc.nextInt();
		int he=0;
		for(int i=1;i<=n;i++){
			if(i%3==0){
				he++;
			}
		}
		System.out.println(he);
	}

}
