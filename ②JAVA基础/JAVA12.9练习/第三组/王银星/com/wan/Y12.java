package com.wan;

import java.util.Scanner;

public class Y12 {
	//从键盘接收一个字符串，将数字截掉，将小写字母转成大写，然后输出新的字符串
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		String i=sc.next();
		for(int j=0;j<10;j++){
			
			i=i.replace(j+"", "");
			
		}
		String a=i.toUpperCase();
		System.out.println(a);
	}

}
