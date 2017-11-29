package com.zuoye;

public class Zuoye3 {
	/*
	 * 3 编程. 已知字符串："this is a test of java".

按要求执行以下操作：

(1) 统计该字符串中字母s出现的次数

(2) 返回"test"所在的编号

(3) 将本字符串复制到一个字符数组Char[] str中.

(4) 将字符串中每个单词的第一个字母变成大写， 输出到控制台。

(5) 将该字符串的倒叙输出。

(6) 将本字符串转换成一个字符串数组，要求每个数组元素都是一个有意义的英文单词,并输出到控制台
	 */
	public static void main(String[] args) {
		String zf="this is a test of java";
		zf=zf+" ";
		String a=zf.toUpperCase();
		int t=zf.indexOf("test");
		String []sz=zf.split("s");
		System.out.println("字符串中字母s出现的次数为："+(sz.length-1)+"次。");
		System.out.println("返回test所在的编号是："+t);
		System.out.println(a);  
		String zf1="this is a test of java";
		String []sz1=zf1.split("");
		for(int i=sz1.length-1;i>=0;i--){
			System.out.print(sz1[i]);
		}
		System.out.println();
		String zf2="this is a test of java";
		String []sz2=zf2.split(" ");
		for(String j:sz2){
			System.out.print(j+",");
		}
	}

}
