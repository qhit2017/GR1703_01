package com.xingwenzhe;

import java.util.Scanner;

public class er {
	//输出1~2017之间的闰年
	
	public static void main(String[] args) {
		
		Scanner s=new Scanner(System.in);
		
		for(int i=1;i<=2017;i++){
			if(i/4==0 && i/100==0 || i/400==0){
				System.out.println("是闰年");
			}else{
				System.out.println("不是闰年");
			}
		}
	}

}
