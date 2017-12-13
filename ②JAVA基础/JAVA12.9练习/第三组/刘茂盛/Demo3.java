package com.lianxi1211;

import java.util.Scanner;

public class Demo3 {
	//从键盘接收一个字符串，将数字截掉，将小写字母转成大写，然后输出新的字符串
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		String n=sc.next();
		for(int i=0;i<10;i++){
			n=n.replace(""+i,"");
		}
		System.out.println(n.toUpperCase());
		
	}

}
