package com.wan;

import java.util.Scanner;

public class Y19 {
	//�Ӽ��̽���һ�����֣�������ָ�λ�ĺ�
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int i=sc.nextInt();
		/*int he=0;
		while(true){
			if(i<=0){
				System.out.println(he);
				break;
			}else if(i>0){
				he=he+(i%10);
				i=i/10;
			}
		}*/
		int he1=0;
		for(int j=i;	j!=0;		j=j/10){
			he1=he1+(j%10);
		}
		System.out.println(he1);
		
	}

}
