package com.wan;

import java.util.Scanner;

public class Y27 {
	//从键盘接收n,输出1~n之间包含7且不包含8且能被3整除的偶数
	public static void main(String[] args) {
	Scanner sc=new Scanner(System.in);
	int n=sc.nextInt();
	out: for(int i=2;i<=n;i=i+2){
		for(int j=i;j>=1;j=j/10){
			if(j%10==8){
				continue out;
			}
		}
		for(int s=i;s>=1;s=s/10){
			if(s%10==7){
				if(i%3==0){
					System.out.println(i);
				}
			}
		}
	}
	
		
	
	
	
	
	}
}
