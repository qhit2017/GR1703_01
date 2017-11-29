package com.suzhu;

public class dome4 {
//4 定义一个整型数组{5,9,12,45,18,30}，要求打印出数组中所有元素之和，并打印出最大值和最小值。
	public static void main(String[] args) {
		int [] arr={5,9,12,45,18,30};
		int sum=0;
		for(int i=0;i<arr.length;i++){
			sum=sum+arr[i];
		}
		System.out.println("和是"+sum);
		int max=0;
		for(int j=0;j<arr.length-5;j++){
			max=max+arr[j];
		}
			System.out.println("最小值"+max);
		int min=0;
		for(int g=0;g>arr.length-5;g--){
			min=min+arr[g];
		}
			System.out.println("最大值是"+min);
	}
}
