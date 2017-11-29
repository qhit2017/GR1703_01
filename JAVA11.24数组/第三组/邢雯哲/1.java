package com.xingwenzhe;

public class z1 {
	/*
	 * 定义一个数组{8,51,63，21,47,12}要求正这输出所有元素及反这输出所有元素
	 */

	public static void main(String[] args) {
		
		int [] arr={8,51,63,21,47,12};
		System.out.print("正着输出：");
		for(int a=0;a<arr.length;a++){
			System.out.print(arr[a]+"\t");
			
		}System.out.println();
		System.out.print("反着输出：");
		for(int i=arr.length-1;i>=0;i--){
			System.out.print(arr[i]+"\t");
		}
		
		
	}
}
