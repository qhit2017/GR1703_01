package com.zuoye;

import java.util.Scanner;

public class hgugut {
	
	/*2 从键盘接收一个字符串，输出字符串里的大写字母数，小写英文字母数，
	 * 非英文字母数

	 * 
	 */
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("输入一个字符串");
		String str=sc.nextLine();
		int a=0;
		int b=0;
		int c=0;
		for(int t=0;t<str.length();t++){
			if(str.charAt(t)>='a'&&str.charAt(t)<='z'){
				a++;
			}else if(str.charAt(t)>='A'&&str.charAt(t)<='Z'){
				b++;
			}	else if(str.charAt(t)<10){
				c++;
			}
		}
		System.out.println("字符串里的大写字母数"+a);
		System.out.println("字符串里的小写字母数"+b);
		System.out.println("字符串里的非英文母数"+c);
	}

}
