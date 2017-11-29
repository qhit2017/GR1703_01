package com.zuoye;

public class Zuoye4 {
	/*4 定义一个整型数组{5,9,12,45,18,30}，
	 * 要求打印出数组中所有元素之和，并打印出最大值和最小值。
	 * 
	 */
	public static void main(String[] args) {
		int []sz={5,9,12,45,18,30};
		int he=0;
		int da=sz[0];
		int min=sz[0];
		for(int i=0;i<sz.length;i++){
			he=he+sz[i];
			if(da<sz[i]){
				da=sz[i];
				
				if(min>sz[i]){
					min=sz[i];
				}
			}
		}
		System.out.println("所有元素和是："+he);
		System.out.println("最大值是："+da);
		System.out.println("最小值是："+min);
	}

}
