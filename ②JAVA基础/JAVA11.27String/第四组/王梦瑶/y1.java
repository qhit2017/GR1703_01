package com.zuoye;

public class y1 {
	//1 String s="hijavahehejavahejava";找出字符串中有几个java?
	public static void main(String[] args) {
		String s="hijavahehejavahejava";
		
		int t=0;
		for(int i=1;i>=1;i++){
			if(s.indexOf("java")!=-1){
				s=s.substring(s.indexOf("java")+4,s.length());
				t++;				
			}
		}
		
		System.out.println(t);
			
		}
		
}
