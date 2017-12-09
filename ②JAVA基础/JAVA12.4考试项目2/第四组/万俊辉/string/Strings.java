package com.string;

import java.util.Scanner;

public class Strings {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		//length
		String str = "a5d1453sa1d3as1da3s1";
		char[] arr = str.toCharArray();
		int count = 0;
		for(char c:arr){
			count++;
		}
		System.out.println(count);
		//charAt
		int a = sc.nextInt();
		System.out.println(arr[a]);		
		//toUpperCase
		for(char c:arr){
			if(c>='a'&&c<='z'){
				c = (char)(c-32);
			}
			System.out.print(c);
		}
		System.out.println();
		//toLowerCase
		for(char c:arr){
			if(c>='A'&&c<='Z'){
				c = (char)(c+32);
			}
			System.out.print(c);
		}
		//subString
		int b=sc.nextInt();
		int c=sc.nextInt();
		for(int i=b;i<c;i++){
			System.out.println(arr[i]);
		}
		//indexOf
		
		//replace
		
		//split
	}

}
