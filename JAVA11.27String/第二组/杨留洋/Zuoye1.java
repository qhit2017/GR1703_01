package com.Zoye;

public class Zuoye1 {
	
	/*
	 * String s="hijavahehejavahejava";找出字符串中有几个java?
	 */
	public static void main(String[] args) {
		String s="hijavahehejavahejava";
		int sum = 0;
		for(int a=0;a<s.length();a++){
			if(s.indexOf("java")!=-1){
				s = s.substring(s.indexOf("java")+4,(s.length()));
				sum++;
			}
		}
		System.out.println(sum);
		
		
		
		
	}
	

}
