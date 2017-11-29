package com.suzhu;

public class DOME2 {
//2 定义一个数组{9,15,24,36,78,51,94,62,57,42} 要求输出第奇数个元素
	
	public static void main(String[] args) {
			int arr []={9,15,24,36,78,51,94,62,57,42};
			for(int i=0; i<arr.length;i=i+2){
				System.out.print(arr[i]+"  ");
			}
	}
}
 