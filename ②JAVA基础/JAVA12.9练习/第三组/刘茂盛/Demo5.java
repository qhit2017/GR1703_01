package com.lianxi1211;

import java.util.Scanner;

public class Demo5 {
	//�Ӽ��̽���n,���1~n֮�����7�Ҳ�����8���ܱ�3������ż��
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
