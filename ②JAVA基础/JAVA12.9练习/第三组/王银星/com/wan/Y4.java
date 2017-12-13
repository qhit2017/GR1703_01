package com.wan;

import java.util.Arrays;

public class Y4 {
	//定义数组 Int[] arr = {1,3,5,6,5,6,7,5}，将数组从小到大排序，并输出
	public static void main(String[] args) {
		 int[] arr = {15,42,63,44,54,66,47,68,39,10};
	//	 Arrays.sort(arr);
		 
		 for(int i=0;i<arr.length-1;i++){
			 for(int j=i+1;j<arr.length;j++){
				 if(arr[i]>arr[j]){
					 int t=arr[i];
					 arr[i]=arr[j];
					 arr[j]=t;
				 }
			 }
		 }
		 for(int i=0;i<arr.length;i++){
			 System.out.println(arr[i]);
		 }
	}

}
