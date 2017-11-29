package com.homework;
/*+
 * 4 定义一个整型数组{5,9,12,45,18,30}，要求打印出数组中所有元素之和，并打印出最大值和最小值。
 */
public class question4 {

	public static void main(String[] args) {
		
		int arr[]={5,9,12,45,18,30};
		int sum=0;
		for(int a =0;a<arr.length;a++){
			sum=sum+arr[a];
		}
		System.out.println(sum);
		
		int max=arr[0];
		int min=arr[0];
		for(int a=0;a<arr.length;a++){
			max=max>arr[a]?max:arr[a];
			min=min<arr[a]?min:arr[a];
		}
		System.out.println("最大值是"+max);
		System.out.println("最小值是"+min);
		
		
		
		
	}
	
}
