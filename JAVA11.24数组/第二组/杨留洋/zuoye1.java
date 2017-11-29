package com.zuoye;

public class zuoye1 {
	public static void main(String[] args) {
		/*
		 * 定义一个数组{8,51,63,21,47,12} 要求正着输出所有元素及反着输出所有元素
		 */
		int[] arr ={8,51,63,21,47,12};
		for(int a=0;a<arr.length;a++){
			System.out.print(+arr[a]+"\t");
		}
		//反着输出
		for(int b=arr.length-1;b>=0;b--){
			System.out.print("\n"+arr[b]);
		}
		
		
		
		
		
		
	}
	
	
	
	

}
