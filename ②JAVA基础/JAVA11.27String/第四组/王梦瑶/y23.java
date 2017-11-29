package com.zuoye;

public class y23 {
	//3) 将本字符串复制到一个字符数组Char[] str中.
	public static void main(String[] args) {
		String s="this is a test of java";
		
	char []str=new char[s.length()];
	for(int t=0;t<s.length();t++){
		str[t]=s.charAt(t);
		System.out.print(str[t]);
	}
	
			
		
		
	}

}
