package com.zuoye;

public class Zuoye1 {
	/*1 定义一个数组{8,51,63,21,47,12} 要求正着输出所有元素及反着输出所有元素
	 * 
	 */
	public static void main(String[] args) {
		int []sz={8,51,63,21,47,12};
		for(int i=0;i<sz.length;i++){
			System.out.print(sz[i]+"\t");
		}
		System.out.println();
		for(int j=sz.length-1;j>=0;j--){
			System.out.print(sz[j]+"\t");
		}
	}

}
