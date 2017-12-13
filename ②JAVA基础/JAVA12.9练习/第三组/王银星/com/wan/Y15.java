package com.wan;

import java.util.Scanner;

public class Y15 {
	//从键盘接收一个字符串，将该字符串反转输出
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		String i=sc.next();
		String []sz=i.split("");
		for(int j=sz.length-1;j>=0;j--){
			System.out.print(sz[j]);
		}
	}

}
