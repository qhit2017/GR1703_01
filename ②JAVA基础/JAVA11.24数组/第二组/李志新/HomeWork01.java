package com.lizhixin;
//定义一个数组{8,51,63,21,47,12} 要求正着输出所有元素及反着输出所有元素
public class HomeWork01 {
	public static void main(String[] args) {
		
	System.out.println("正着输出：");
	int[] arr = {8,51,63,21,47,12};  //正着输出
	for(int i=1;i<=arr.length;i++){
		System.out.print(arr[i-1]+"\t");
	}
	System.out.println();
	System.out.println("倒着输出：");
	for(int i=arr.length-1;i>=0;i--){
		System.out.print(arr[i]+"\t");
	}
	

}
}