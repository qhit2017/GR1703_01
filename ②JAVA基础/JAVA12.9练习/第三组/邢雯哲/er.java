package com.xingwenzhe;

import java.util.Scanner;

public class er {
	//���1~2017֮�������
	
	public static void main(String[] args) {
		
		Scanner s=new Scanner(System.in);
		
		for(int i=1;i<=2017;i++){
			if(i/4==0 && i/100==0 || i/400==0){
				System.out.println("������");
			}else{
				System.out.println("��������");
			}
		}
	}

}
