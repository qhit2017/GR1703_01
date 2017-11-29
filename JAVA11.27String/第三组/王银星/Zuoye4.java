package com.zuoye;

public class Zuoye4 {
	/*
	 * 4  给定一个由数字组成的字符串
	 * ,如:"1239586838923173478943890234092",统计出每个数字出现的次数
	 */
	public static void main(String[] args) {
		String str="1239586838923173478943890234092";
		for(int i=0;i<10;i++){
			String s=str+" ";
			String[] arr=s.split(""+i);
			
			System.out.println(i+"出现的次数是："+(arr.length-1));
		}
	}

}
