package com.xingwenzhe;

public class z1 {
	/*
	 * ����һ������{8,51,63��21,47,12}Ҫ�������������Ԫ�ؼ������������Ԫ��
	 */

	public static void main(String[] args) {
		
		int [] arr={8,51,63,21,47,12};
		System.out.print("���������");
		for(int a=0;a<arr.length;a++){
			System.out.print(arr[a]+"\t");
			
		}System.out.println();
		System.out.print("���������");
		for(int i=arr.length-1;i>=0;i--){
			System.out.print(arr[i]+"\t");
		}
		
		
	}
}
