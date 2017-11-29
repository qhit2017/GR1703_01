package com.zuoye;

public class y2 {
	/*3 编程. 已知字符串."this is a test of java";

按要求执行以下操作：

(1) 统计该字符串中字母s出现的次数

(2) 返回"test"所在的编号

(3) 将本字符串复制到一个字符数组Char[] str中.

(4) 将字符串中每个单词的第一个字母变成大写， 输出到控制台。

(5) 将该字符串的倒叙输出。

	 * 
	 */
	public static void main(String[] args) {
		String s="this is a test of java";
		int t=0;
		for(int i=1;i>=1;i++){
			if(s.indexOf("s")!=-1){
				s=s.substring(s.indexOf("s")+1, s.length());
				t++;
			}
		}
		System.out.println(t);
	}

}
