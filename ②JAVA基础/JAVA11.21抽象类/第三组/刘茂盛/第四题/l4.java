package com.liumaosheng4;

public class l4 {
	//�����0~10000֮����3��ͷ����
	public static void main(String[] args) {
		for(int i=0;i<=10000;i++){
			int n=i;
			if(n<10&&n==3){
				System.out.println(i);
			}
			while(n>=10){
				int a=n%10;
				n=n/10;
				if(n==3){
					
					System.out.println(i);
				}
			}
		}
	}

}
