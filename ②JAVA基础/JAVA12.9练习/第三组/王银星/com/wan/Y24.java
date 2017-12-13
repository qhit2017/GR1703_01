package com.wan;

public class Y24 {
	//定义字符串 String str = "abcdefghijk" 输出字符串的后5位
	public static void main(String[] args) {
		String str = "abcdefghijk";
		String[]sz=str.split("");
		for(int i=sz.length-1;i>=6;i--){
			System.out.print(sz[i]);
		
		}
	}
		

}
