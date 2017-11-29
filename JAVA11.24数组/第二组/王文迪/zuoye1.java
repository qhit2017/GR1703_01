package com.wangwendi;

public class zuoye1 {
	
	public static void main(String[] args) {
		
		int [] arr = {5,11,98,9,24,1};
		  System.out.println("正着输出为：");
		for(int i=0;i<arr.length;i++){
			System.out.print(arr[i]+"\t");
		}
		System.out.println();
		  System.out.println("反着输出为：");
		for(int n=arr.length-1;n>=0;n--){
			System.out.print(arr[n]+"\t");
		}
		
	}

}
