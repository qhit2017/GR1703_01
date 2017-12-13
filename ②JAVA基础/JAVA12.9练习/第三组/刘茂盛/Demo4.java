package com.lianxi1211;

public class Demo4 {
	//输出1~10000之间以8开头，以7结尾且能被3整除的数
	public static void main(String[] args) {
		for(int i=0;i<=10000;i++){
			String s=""+i;
			if(s.charAt(0)=='8'&&s.charAt(s.length()-1)=='7'&&i%3==0){
				System.out.println(i);
			}
		}
		
	}

}
