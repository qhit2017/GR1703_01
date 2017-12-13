package com.wan;

public class Y18 {
	//定义数组 int [] arr = {7,8,9,12,5}; 求数组里元素的和以及平均值
	public static void main(String[] args) {
		int []sz={7,8,9,12,5};
		int he=0;
		for(int i=0;i<sz.length;i++){
			he=he+sz[i];
		}
		System.out.println(he);
		System.out.println(he/sz.length);
	}

}
