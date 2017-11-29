package com.zuoye;

public class Zuoye2 {
	/*2 定义一个数组{9,15,24,36,78,51,94,62,57,42} 要求输出第奇数个元素
	 * 
	 */
	public static void main(String[] args) {
		int [] sz={9,15,24,36,78,51,94,62,57,42};
		for(int i=1;i<sz.length;i=i+2){
			System.out.print(sz[i]+"\t");
		}
		
		
	}

}
