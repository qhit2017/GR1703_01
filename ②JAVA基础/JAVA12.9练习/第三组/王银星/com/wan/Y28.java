package com.wan;

import java.util.Scanner;

public class Y28 {
	//�Ӽ�������һ�������ж����Ǽ�λ����
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int i=sc.nextInt();
		int s=1;
		while(true){
			if(i>=10){
				s++;
				i=i/10;
			}else {
				break;
			}
		}
		System.out.println(s);
		
		
		
	}

}
