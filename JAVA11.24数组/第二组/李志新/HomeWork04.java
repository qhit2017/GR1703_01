package com.lizhixin;
//定义一个整型数组{5,9,12,45,18,30}，要求打印出数组中所有元素之和，并打印出最大值和最小值。
public class HomeWork04 {
	public static void main(String[] args) {
		
		int[] arr ={5,9,12,45,18,30};
		int sum=0;
		int max=arr[0];
		int min=arr[0];
		for(int i=1;i<=arr.length;i++){
			sum=sum+arr[i-1];
		}
			
		System.out.println("各元素之和为："+sum);
		
		for(int j=1;j<=arr.length-1;j++){
			if(max<arr[j]){
				max=arr[j];
			}if(min>arr[j]){
				min=arr[j];
			}
			}
		System.out.println("最大值为："+max);
		System.out.println("最小值为："+min);
	

}
}

