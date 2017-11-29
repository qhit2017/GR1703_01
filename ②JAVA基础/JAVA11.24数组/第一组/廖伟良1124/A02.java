package com.arrays;
/*
 * 定义一个数组{9,15,24,36,78,51,94,62,57,42} 要求输出第奇数个元素
 */
public class A02 {
	public static void main(String[] args) {
		int arr[] = {9,15,24,36,78,51,94,62,57,42};
		for(int i=0;i<arr.length;i++){
			if(i%2==0){
				System.out.print(arr[i]+" ");
			}
		}
	}
}
