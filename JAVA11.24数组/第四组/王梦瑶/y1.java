package com.wangmengyao;

public class y1 {
	//����һ������{8��51��63��21��47��12}Ҫ�������������Ԫ�ؼ������������Ԫ��
	public static void main(String[] args) {
		int [] arr={8,51,63,21,47,12};
		System.out.println("�������������");
		for(int t=0;t<arr.length;t++){
			System.out.print(arr[t]+"\t");
		}
		System.out.println("\n"+"�������������");
		for(int i=arr.length-1;i>=0;i--){
			System.out.print(arr[i]+"\t");
		}
	}

}
