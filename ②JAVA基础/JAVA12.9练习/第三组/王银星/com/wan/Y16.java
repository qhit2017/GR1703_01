package com.wan;

public class Y16 {
	//定义数组 int [] arr = {7,8,9,12,5};用while循环倒着输出数组里的元素
	public static void main(String[] args) {
		int [] arr = {7,8,9,12,5};
		int i=arr.length-1;
		while(i>=0){
			System.out.println(arr[i]);
			i--;
		}
	}

}
