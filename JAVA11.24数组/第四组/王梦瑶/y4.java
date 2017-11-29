package com.wangmengyao;

public class y4 {
	//定义一个整型数组{5，9，12，45，18，30}，要求打印出数组中所有元素之和，并打印出最大值最小值
	public static void main(String[] args) {
		int [] arr={5,9,12,45,18,30};
		int sum=0;
		int max=arr[0];
		int mix=arr[0];
		for(int t=0;t<arr.length;t++){
			sum=sum+arr[t];
			if(max<arr[t]){
				max=arr[t];
			}
			if(mix>arr[t]){
				mix=arr[t];
			}
		}
		System.out.println("所有元素之和"+sum);
		System.out.println("最大值"+max);
		System.out.println("最小值"+mix);
	}

}
