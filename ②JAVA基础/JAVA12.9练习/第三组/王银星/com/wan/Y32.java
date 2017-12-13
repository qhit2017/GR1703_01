package com.wan;

import java.util.Scanner;

public class Y32 {
	/*
	 * 定义数组 Int[] arr = {10,3,5,6,5,6,7,5} 先将所有元素加10.
然后判断每一个元素，如果该元素能被2整除，该元素加2，
如果能被3整除，该元素加3，如果能被5整除，该元素加4
如果既能被2整除又能被3整除，该元素加5,如果既能被3整除又能被5整除，该元素加6
如果既能被2整除又能被5整除，该元素加7，如果能同时被2,3,5整除，该元素加8
请输出新数组中的元素

	 */
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int i=sc.nextInt();
		while(true){
			if(i>=1){
				System.out.print(i%10);
				i=i/10;
			}else{
				break;
			}
		}
		
	}

}
