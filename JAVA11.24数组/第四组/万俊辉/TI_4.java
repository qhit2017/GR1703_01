package com.Wjh;

public class TI_4 {

	public static void main(String[] args) {
		
		int[] arr ={5,9,12,45,18,30};
		int sum = 0;
		int max=arr[0];
		int min=arr[0];
		for(int i=0;i<arr.length;i++){
			sum=sum+arr[i];
			if(max<arr[i]){
				max=arr[i];
			}
			if(min>arr[i]){
				min=arr[i];
			}
			
		}
		System.out.println("和为："+sum);
		System.out.println("最大值为："+max);
		System.out.println("最小值为："+min);
	}
	
}
