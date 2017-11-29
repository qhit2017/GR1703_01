package com.suzhu;

import java.util.Scanner;

public class done1 {	
	public static void main(String[] args) {
//	1 定义一个数组{8,51,63,21,47,12} 要求正着输出所有元素及反着输出所有元素
		
		
		int [] arr= {8,51,63,21,47,12};
		
		  for(int i=0;i<arr.length;i++){
			  System.out.println("正着输出"+arr[i]);
		  }
		  System.out.println("反着输出");
		  	for(int i=arr.length-1; i>=0;i--){
		  		System.out.print(arr[i]+"   ");
				
				
		  	}
	}
}