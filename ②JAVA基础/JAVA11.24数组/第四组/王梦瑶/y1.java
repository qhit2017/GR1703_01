package com.wangmengyao;

public class y1 {
	//定义一个数组{8，51，63，21，47，12}要求正着输出所以元素及反着输出所有元素
	public static void main(String[] args) {
		int [] arr={8,51,63,21,47,12};
		System.out.println("正着输出所有数");
		for(int t=0;t<arr.length;t++){
			System.out.print(arr[t]+"\t");
		}
		System.out.println("\n"+"反着输出所有数");
		for(int i=arr.length-1;i>=0;i--){
			System.out.print(arr[i]+"\t");
		}
	}

}
