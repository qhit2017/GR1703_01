package com.hongwork;

public class Dome3 {
	
	/*
	 * 5 ��for �� while���ַ�������1~100֮�������ĺ�
	 */

	public static void main(String[] args) {
		
		int sum =0;
		for(int a =1;a<=100;a++){
			if(a%2!=0){
				sum = sum+a;
			}
		}
			System.out.println(sum);
		
		int b=1;
		int sum1 =0;
		while(b<=100){
			if(b%2!=0){
				sum1 = sum1+b;
			}
			b++;
		}
		System.out.println(sum1);	
			
	}
	
}
