package com.wan;

import java.util.Scanner;

public class Y27 {
	//�Ӽ��̽���n,���1~n֮�����7�Ҳ�����8���ܱ�3������ż��
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
