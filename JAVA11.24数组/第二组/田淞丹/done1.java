package com.suzhu;

import java.util.Scanner;

public class done1 {	
	public static void main(String[] args) {
//	1 ����һ������{8,51,63,21,47,12} Ҫ�������������Ԫ�ؼ������������Ԫ��
		
		
		int [] arr= {8,51,63,21,47,12};
		
		  for(int i=0;i<arr.length;i++){
			  System.out.println("�������"+arr[i]);
		  }
		  System.out.println("�������");
		  	for(int i=arr.length-1; i>=0;i--){
		  		System.out.print(arr[i]+"   ");
				
				
		  	}
	}
}