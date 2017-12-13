package com.lianxi1211;

public class Demo2 {
	//定义一个字符串 String str = "1290812479120741"; 求各个数字出现的次数
	public static void main(String[] args) {
		String str = "1290812479120741";
		for(int i=0;i<10;i++){
			String s=str+"z";
			String []arr=s.split(""+i);
			System.out.println(i+"出现的次数是"+(arr.length-1));
			
			
		}
	}

}
