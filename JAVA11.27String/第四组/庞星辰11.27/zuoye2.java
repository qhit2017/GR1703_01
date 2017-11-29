package com.zoye;

import java.util.Scanner;

public class zuoye2 {
	/*
	 * 从键盘接收一个字符串，输出字符串里的大写字母数，小写英文字母数，非英文字母数
	 */
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("请输入一个字符串：");
		String str=sc.next();
		int i=0;
		int j=0;
		int t=0;
		for(int a=0;a<str.length();a++){
			if(str.charAt(a)>='a' && str.charAt(a)<='z'){
				i++;
			}else if(str.charAt(a)>='A'&&str.charAt(a)<='Z'){
				j++;
			}else if(str.charAt(a)>='0'&&str.charAt(a)<='9'){
				t++;
			}
		}
		
		System.out.println("小写字母有"+i);
		System.out.println("大写字母有"+j);
		System.out.println("数字有"+t);
		
	}
	
	
	

}
