package com.lianxi1211;

import java.util.Scanner;

public class Demo5 {
	//从键盘接收n,输出1~n之间包含7且不包含8且能被3整除的偶数
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int n=sc.nextInt();
		a:for(int i=0;i<=n;i++){
			for(int a=i;a>0;a=a/10){
				if(a%10==8){
					continue a;
				}
			}
			for(int b=i;b>0;b=b/10){
				if(b%10==7&&i%3==0&&i%2==0){
					
					System.out.println(i);
				}
			}
			
			
		}
	}

}
