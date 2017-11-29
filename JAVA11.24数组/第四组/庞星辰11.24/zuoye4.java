package com.zuoye;

public class zuoye4 {
	public static void main(String[] args) {
		/*
		 * 定义一个整型数组{5,9,12,45,18,30}，要求打印出数组中所有元素之和，并打印出最大值和最小值。
		 */
		int[] arr ={5,9,12,45,18,30};
		int sum = 0;
		
		for(int a=0;a<arr.length;a++){
			sum = sum+arr[a];
		}
		System.out.println(sum);
		//最大值
		int max=arr[0];
		for(int i=1 ;i<arr.length;i++){
				if(arr[i]>max){
					max=arr[i];
					
				}
			}
		System.out.println(max);
	//最小值
		int min=arr[0];
		for(int j=1;j<arr.length;j++){
			if(arr[j]<min){
				min=arr[j];
			}
		}
		System.out.println(min);
	
	
	
	
	
	
		
		
		
	}
	
	
}
	
	
	


