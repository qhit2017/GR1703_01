package com.homework;
/*
 * 1 定义一个数组{8,51,63,21,47,12} 要求正着输出所有元素及反着输出所有元素
 */
public class question1 {
	
	public static void main(String[] args) {
		int arr[]={8,51,63,21,47,12};
		System.out.println("正着输出");
		for(int a =0;a<arr.length;a++){
			System.out.print(arr[a]+"\t");
		}
		System.out.println();
		System.out.println("反着输出");
		for(int a=arr.length-1;a>=0;a--){
			System.out.print(arr[a]+"\t");
		}
			
			
			
			
			
			
			
			
			
			
			
	}
	
}
