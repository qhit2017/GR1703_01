package com.lijiakang;

public class st6_5 {
	public static void main(String[] args) {
		int i = 1;
		do{
			if(i%5==0&&i%3==0){
				System.out.println(i);
			}
			i++;
		}while(i<=1000);
	}
}
