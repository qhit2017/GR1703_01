package com.Wjh;

public class TI_1 {
	
	public static void main(String[] args) {
		
		int [] arr = {8,51,63,21,47,12};
		System.out.println("�������Ϊ��");
		for(int i=0;i<arr.length;i++){
			System.out.print(arr[i]+"\t");
		}
		System.out.println();
		System.out.println("�������Ϊ��");
		for(int n=arr.length-1;n>=0;n--){
			System.out.print(arr[n]+"\t");
		}
		
	}

}
