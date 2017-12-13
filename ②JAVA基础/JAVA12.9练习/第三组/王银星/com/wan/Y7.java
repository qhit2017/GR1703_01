package com.wan;

public class Y7 {
	//定义数组 int [] arr = {7,8,9,12,5}; 求数组里最大值以及最小值
	public static void main(String[] args) {
		 int [] arr = {7,8,9,12,5}; 
		 int max=0;
		 int min=arr[1];
		 for(int i:arr){
			 if(max<i){
				 max=i;
			 }
		 }
		 for(int i:arr){
			 if(min>i){
				 max=i;
			 }
		 }
		 System.out.println(max);
		 System.out.println(min);
		
		
	}

}
